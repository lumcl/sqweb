class CreateReqOrdSup < ActiveRecord::Migration
  def change
    create_table :req_ord_sup, id: false do |t|
      t.string :uuid, null: false
      t.string :req_ord_id, null: false
      t.string :lifnr, null: false
      t.string :sortl
      t.string :name1
      t.string :weark, null: false
      t.string :trading_type
      t.text :emails
      t.date :sent_at
      t.date :received_at
      t.string :open_by
      t.date :open_at
      t.string :open_ip
      t.string :reply_by
      t.date :reply_at
      t.string :reply_ip
      t.string :creator
      t.string :updater

      t.timestamps null: false
    end
    add_index :req_ord_sup, :uuid, unique: true
    add_index :req_ord_sup, :req_ord_id
    add_index :req_ord_sup, :lifnr
  end
end
