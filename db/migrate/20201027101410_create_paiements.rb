class CreatePaiements < ActiveRecord::Migration[6.0]
  def change
    create_table :paiements do |t|
      t.string :date
      t.monetize :amount
      t.references :fournisseur, null: false, foreign_key: true

      t.timestamps
    end
  end
end
