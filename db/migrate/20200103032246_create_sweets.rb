class CreateSweets < ActiveRecord::Migration[5.2]
  def change
    create_table :sweets do |t|
      t.string :name,      null: false
      t.integer :user_id,  null: false, foreign_key: true
      t.text :image,       null: false
      t.text :description, null: false
      t.timestamps
    end
    add_index :sweets, :name , unique: true
  end
end
