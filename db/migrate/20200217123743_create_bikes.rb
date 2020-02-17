class CreateBikes < ActiveRecord::Migration[5.2]
  def change
    create_table :bikes do |t|
      t.string :name, null: false
      t.integer :price, null: false
      t.integer :year, null: false
      t.integer :displacement, null: false
      t.integer :mileage, null: false
      t.text :description

      t.timestamps
    end
  end
end
