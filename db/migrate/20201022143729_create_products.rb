class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :brand
      t.string :name
      t.string :size
      t.string :genre
      t.string :category
      t.string :status, default: "à vendre"
      t.monetize :price
      t.references :selection, null: false, foreign_key: true

      t.timestamps
    end
  end
end
