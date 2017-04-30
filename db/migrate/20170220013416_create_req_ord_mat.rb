class CreateReqOrdMat < ActiveRecord::Migration
  def change
    create_table :req_ord_mat, id: false do |t|
      t.string :uuid, null: false
      t.string :req_ord_id, null: false
      t.integer :seq, null: false, default: 1
      t.string :matnr, null: false, default: '*'
      t.string :maktx, null: false
      t.string :maker_part_no
      t.text :remark
      t.string :status, null: false, default: '10'
      t.string :meins, null: false, default: 'EA'
      t.string :sap_matnr, null: false, default: ' '
      t.decimal :target_pct, null: false, default: 0, precision: 15, scale: 6
      t.decimal :target_prc, null: false, default: 0, precision: 15, scale: 6
      t.decimal :vtweg_prc, null: false, default: 0, precision: 15, scale: 6
      t.decimal :lowest_prc, null: false, default: 0, precision: 15, scale: 6
      t.decimal :domestic_prc, null: false, default: 0, precision: 15, scale: 6
      t.decimal :foreign_prc, null: false, default: 0, precision: 15, scale: 6
      t.string :ref_matnr
      t.string :ref_maktx
      t.string :end_customer
      t.string :prd_app
      t.string :design_no
      t.date :pilot_run_date
      t.date :mass_prod_date
      t.decimal :forecast_qty, null: false, default: 0, precision: 15, scale: 6
      t.string :forecast_uom
      t.string :drawing
      t.string :order_plant
      t.string :creator, null: false, default: 'sys@l-e-i.com'
      t.string :updater, null: false, default: 'sys@l-e-i.com'
      t.string :create_ip, null: false, default: '127.0.0.1'
      t.string :update_ip, null: false, default: '127.0.0.1'

      t.timestamps null: false
    end
    add_index :req_ord_mat, :uuid, unique: true
    add_index :req_ord_mat, [:req_ord_id, :matnr], unique: true
  end
end
