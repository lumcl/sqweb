class Avl < ActiveRecord::Base
  self.primary_key = :uuid
  validates_uniqueness_of :werks, scope: [:lifnr, :matkl]
  validates_presence_of :werks, :lifnr

  validate :create_validation

  def self.create_via_excel(rows)
    avls = []
    rows.each do |row|
      hash = {}
      if row.include?("\t")
        buf = row.split("\t")
        hash[:werks] = buf[0]
        hash[:lifnr] = buf[1]
        hash[:matkl] = buf[2]
        hash[:email] = buf[3]
        hash[:resp] = buf[4]
        avls.append(hash)
      end
    end
    error_logs = []
    avls.each do |avl|
      obj = Avl.create(avl)
      if obj.errors.present?
        avl[:msg] = obj.errors.messages
        error_logs.append(avl)
      end
    end
    error_logs
  end

  def create_validation
    sql = "select lifnr from sapsr3.lfa1 where mandt='168' and lifnr=?"
    row = Sapdb.find_by_sql([sql, lifnr])
    errors.add(:lifnr, I18n.t(:lifnr_err)) if row.blank?
    sql = "select matkl from sapsr3.t023 where mandt='168' and matkl=?"
    row = Sapdb.find_by_sql([sql, matkl])
    errors.add(:matkl, I18n.t(:matkl_err)) if row.blank?
    sql = "select werks from sapsr3.t001w where mandt='168' and werks=?"
    row = Sapdb.find_by_sql([sql, werks])
    errors.add(:werks, I18n.t(:werks_err)) if row.blank?
  end

end
