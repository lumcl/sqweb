class CreateFilerack < ActiveRecord::Migration
  def change
    create_table :filerack, id: false do |t|
      t.string :uuid, null: false
      t.string :parent_id, null: false
      t.string :filename, null: false
      t.string :document
      t.string :remark
      t.string :creator
      t.string :create_ip

      t.timestamps null: false
    end
    add_index :filerack, :uuid, unique: true
    add_index :filerack, :parent_id
  end
end
