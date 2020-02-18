class CreateManufactures < ActiveRecord::Migration[5.2]
  def change
    create_table :manufactures do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
