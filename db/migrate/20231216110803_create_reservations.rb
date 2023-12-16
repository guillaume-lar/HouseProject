class CreateReservations < ActiveRecord::Migration[7.1]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :flat, null: false, foreign_key: true
      t.integer :price
      t.date :date

      t.timestamps
    end
  end
end
