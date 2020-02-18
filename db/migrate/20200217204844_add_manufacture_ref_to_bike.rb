class AddManufactureRefToBike < ActiveRecord::Migration[5.2]
  def change
    add_reference :bikes, :manufacture, foreign_key: true
  end
end
