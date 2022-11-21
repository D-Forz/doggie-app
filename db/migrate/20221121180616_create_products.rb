class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.integer :price, null: false, default: 0
      t.string :description, default: 'Sin descripción'

      t.timestamps
    end
  end
end
