class CreateFlow < ActiveRecord::Migration
  def change
    create_table :flow, id: false do |t|
      t.string :uuid, null: false
      t.string :parent_id, null: false
      t.integer :seq, null: false, default: 1;
      t.string :flow_type, null: false, default: ' '
      t.date :notify_at
      t.string :sign_by
      t.date :sign_at
      t.string :sign_ip
      t.string :result
      t.text :remark
      t.string :assign_id
      t.string :assign_by
      t.date :assign_at
      t.string :status
      t.string :creator
      t.string :updater

      t.timestamps null: false
    end
    add_index :flow, :uuid, unique: true
    add_index :flow, [:parent_id, :seq]
    add_index :flow, [:status, :parent_id]
    add_index :flow, [:assign_id, :seq]
  end
end
