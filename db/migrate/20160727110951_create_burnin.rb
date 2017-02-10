class CreateBurnin < ActiveRecord::Migration
  def change
    create_table :burnin, id:false do |t|
      t.string :uuid, null:false
      t.string :qrcode
      t.string :aufnr
      t.string :pwerk
      t.string :burnline
      t.string :matnr
      t.string :kunnr
      t.string :budat
      t.decimal :psmng, precision: 15, scale: 4, default: 0
      t.decimal :btime, precision: 15, scale: 4, default: 0
      t.decimal :bvolt, precision: 15, scale: 4, default: 0
      t.decimal :bload, precision: 15, scale: 4, default: 0
      t.decimal :btemp, precision: 15, scale: 4, default: 0
      t.datetime :strtime
      t.datetime :endtime
      t.string :struser
      t.string :enduser
      t.decimal :difftime, precision: 15, scale: 4, default: 0
      t.string :result
      t.string :packline
      t.string :pallet
      t.datetime :packtime
      t.string :packuser

    end
    add_index :burnin, :uuid, unique: true
    add_index :burnin, :qrcode, unique: true
    add_index :burnin, :aufnr
    add_index :burnin, :matnr
  end
end
