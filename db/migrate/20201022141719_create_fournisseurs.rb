class CreateFournisseurs < ActiveRecord::Migration[6.0]
  def change
    create_table :fournisseurs do |t|
      t.string :fullname
      t.string :code

      t.timestamps
    end
  end
end
