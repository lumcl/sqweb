class CreateSystab < ActiveRecord::Migration
  def change
    create_table :systab, id: false do |t|
      t.string :objkey, null:false
      t.string :objval

      t.timestamps null: false
    end
    add_index :systab, :objkey, unique: true
  end
end
