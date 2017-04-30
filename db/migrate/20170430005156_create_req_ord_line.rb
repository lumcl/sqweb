class CreateReqOrdLine < ActiveRecord::Migration
  def change
    create_table :req_ord_line do |t|
      t.string :uuid
      t.string :req_ord_id
      t.string :req_ord_sup_id
      t.string :req_ord_mat_id
      t.string :werks
      t.decimal :cur_prc
      t.decimal :cur_prc_conv
      t.decimal :cur_leadtime
      t.decimal :cur_moq
      t.decimal :sup_prc
      t.decimal :sup_prc_conv
      t.decimal :chg_pct
      t.date :sup_valid_from
      t.date :sup_valid_to
      t.decimal :sup_moq
      t.decimal :sup_leadtime
      t.text :sup_remark
      t.string :open_by
      t.date :open_at
      t.string :open_ip
      t.string :reply_by
      t.date :reply_at
      t.string :reply_ip
      t.decimal :cur_alloc
      t.decimal :sup_alloc
      t.text :req_remark
      t.string :req_review_by
      t.date :req_review_at
      t.string :req_review_result
      t.text :req_review_remark
      t.string :req_approved_by
      t.date :req_approved_at
      t.string :req_approved_result
      t.text :req_approved_remark
      t.text :rcv_remark
      t.string :rcv_review_by
      t.date :rcv_review_at
      t.string :rcv_review_result
      t.text :rcv_review_remark
      t.string :rcv_approved_by
      t.date :rcv_approved_at
      t.string :rcv_approved_result
      t.text :rcv_approved_remark
      t.string :creator
      t.string :updater
      t.string :create_ip
      t.string :update_ip

      t.timestamps null: false
    end
    add_index :req_ord_line, :uuid, unique: true
    add_index :req_ord_line, :req_ord_id
    add_index :req_ord_line, :req_ord_sup_id
    add_index :req_ord_line, :req_ord_mat_id
  end
end
