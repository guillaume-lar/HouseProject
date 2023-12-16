class CreateFlats < ActiveRecord::Migration[7.1]
  def change
    create_table :flats do |t|
      t.references :user, null: false, foreign_key: true
      t.string :address
      t.text :description
      t.integer :price

      t.timestamps
    end
  end
end
