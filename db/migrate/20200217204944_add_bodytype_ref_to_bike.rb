class AddBodytypeRefToBike < ActiveRecord::Migration[5.2]
  def change
    add_reference :bikes, :bodytype, foreign_key: true
  end
end
