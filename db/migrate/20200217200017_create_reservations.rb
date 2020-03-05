class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.integer :price, null: false
      t.references :borrower, foreign_key: { to_table: :users}
      t.references :bike, foreign_key: true

      t.timestamps
    end
  end
end
