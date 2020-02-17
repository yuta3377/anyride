class AddPrefectureRefToBike < ActiveRecord::Migration[5.2]
  def change
    add_reference :bikes, :prefecture, foreign_key: true
  end
end
