class CreateSapT001w < ActiveRecord::Migration
  def change
    execute "
      create materialized view sap_t001w
        build immediate refresh complete start with round(sysdate + 1) + 3/24 next round(sysdate + 1) + 3/24
      as
        select a.werks,a.name2,a.ekorg,a.vkorg,b.bukrs,a.lifnr,a.kunnr,sysdate created_at
          from sapsr3.t001w@sapp a
           left join sapsr3.t001k@sapp b on b.mandt=a.mandt and b.bwkey=a.bwkey
          where a.mandt='168' and a.werks <> '0001'
    "
    add_index :sap_t001w, :werks
  end
end
