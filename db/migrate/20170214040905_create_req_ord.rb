class CreateReqOrd < ActiveRecord::Migration
  def change
    create_table :req_ord, id: false do |t|
      t.string :uuid, null: false
      t.string :vtweg, null: false
      t.string :matkl, null: false
      t.string :matgrp, null: false
      t.string :status, null: false
      t.string :ord_no, null: false, default: '*'
      t.date :ord_at, null: false
      t.date :due_at
      t.string :ex_curr, null: false, default: 'RMB'
      t.decimal :ex_rate, null: false, default: 1
      t.string :subject
      t.text :remark
      t.string :req_by, null: false
      t.text :req_remark
      t.string :sent_by
      t.date :sent_at
      t.string :sent_ip
      t.date :reply_at
      t.integer :sent_cnt, null:false, default: 0
      t.integer :reply_cnt, null:false, default: 0
      t.string :creator
      t.string :updater
      t.string :approver
      t.date :finish_at
      t.string :werkss

      t.timestamps null: false
    end
    add_index :req_ord, :uuid, unique: true
    add_index :req_ord, :ord_no, unique: true
    add_index :req_ord, [:matkl, :ord_date]
  end
end
