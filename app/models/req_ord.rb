class ReqOrd < ActiveRecord::Base
  self.primary_key = :uuid

  alias_attribute :matgrp_id, :matkl
  serialize :werkss, JSON

  has_many :req_ord_sups
  has_many :req_ord_mats

  before_save :remove_blank_element

  def remove_blank_element
    self.werkss.delete("")
  end

  # def creator_and_time
  #   "#{created_at.strftime('%Y%m%d %H:%M')} #{creator}"
  # end
  #
  # def updater_and_time
  #   "#{updated_at.strftime('%Y%m%d %H:%M')} #{updater}"
  # end

  def missing_avls
    sql = "
      select lifnr from avl where matkl=? and werks in (?)
      minus
      select lifnr from req_ord_sup where req_ord_id=?
    "
    suppliers = []
    list = ReqOrd.find_by_sql([sql, matkl, werkss, id])
    list.each { |row| suppliers.append(row.lifnr) }
    sql = "
      select distinct a.lifnr,a.sortl,a.name1,a.stcd2,b.waers,c.parvw
        from sapsr3.lfa1 a
          left join sapsr3.lfm1 b on b.mandt=a.mandt and b.lifnr=a.lifnr
          left join sapsr3.wyt3 c on c.mandt=b.mandt and c.lifnr=b.lifnr and c.parza='001'
        where a.mandt='168' and a.lifnr in (?)
        order by a.lifnr
    "
    Sapdb.find_by_sql([sql, suppliers])
  end

  def create_avls(suppliers)
    sql = "
      select distinct a.lifnr,a.sortl,a.name1,a.stcd2,b.waers,c.parvw
        from sapsr3.lfa1 a
          left join sapsr3.lfm1 b on b.mandt=a.mandt and b.lifnr=a.lifnr
          left join sapsr3.wyt3 c on c.mandt=b.mandt and c.lifnr=b.lifnr and c.parza='001'
        where a.mandt='168' and a.lifnr in (?)
        order by a.lifnr
    "
    rows = Sapdb.find_by_sql([sql, suppliers])
    rows.each do |row|
      ReqOrdSup.create(
          req_ord_id: uuid, lifnr: row.lifnr, sortl: row.sortl, name1: row.name1,
          weark: row.waers, trading_type: row.parvw, creator: updater, updater: updater
      )
    end
  end

  def create_mats(materials, target_pct)
    sql = "
        select a.matnr,a.maktx,b.mstae,b.meins
          from sapsr3.makt a
            join sapsr3.mara b on b.mandt=a.mandt and b.matnr=a.matnr and b.matkl=?
          where a.mandt='168' and a.spras='M' and a.matnr in (?)
    "
    mats = Sapdb.find_by_sql([sql, matkl, materials])

    sql = "select matnr,nvl(leifp,0) leifp, nvl(leirp,0) leirp from it.wpirs where matnr in (?)"
    rows = Sapco.find_by_sql([sql, materials])
    prices = {}
    rows.each do |row|
      leifp = row.leifp == 0 ? row.leirp : row.leifp
      leirp = row.leirp == 0 ? row.leifp : row.leirp
      prices[row.matnr] = {
          domestic_prc: row.leirp, foreign_prc: row.leifp, lowest_prc: leifp < leirp ? leifp : leirp
      }
    end

    sql = "select material_no, makerpartno from it.wmaramaker where material_no in (?)"
    rows = Sapco.find_by_sql([sql, materials])
    maker_part_nos = {}
    rows.each do |row|
      maker_part_nos[row.material_no] = row.makerpartno
    end

    mats.each do |mat|
      price = prices.key?(mat.matnr) ? prices[mat.matnr] : {}
      domestic_prc = price.present? ? price[:domestic_prc] : 0
      foreign_prc = price.present? ? price[:foreign_prc] : 0
      lowest_prc = price.present? ? price[:lowest_prc] : 0
      ReqOrdMat.create(
          req_ord_id: uuid, matnr: mat.matnr, maktx: mat.maktx, status: '10', meins: mat.meins,
          target_pct: target_pct, target_prc: (lowest_prc - (lowest_prc * target_pct * 0.01)),
          lowest_prc: lowest_prc, domestic_prc: domestic_prc, foreign_prc: foreign_prc,
          sap_matnr: mat.matnr, maker_part_no: maker_part_nos[mat.matnr],
          creator: updater, updater: updater)
    end
  end

end
