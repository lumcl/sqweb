class CreateAvl < ActiveRecord::Migration
  def change
    create_table :avl, id: false do |t|
      t.string :uuid, null: false
      t.string :werks, null: false
      t.string :lifnr, null: false
      t.string :matkl, null: false
      t.string :email, default: ' '
      t.string :resp, default: ' '
      t.timestamps null: false
    end
    add_index :avl, :uuid, unique: true
    add_index :avl, [:werks,:lifnr,:matkl]
  end
end
