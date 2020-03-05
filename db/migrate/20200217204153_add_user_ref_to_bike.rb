class AddUserRefToBike < ActiveRecord::Migration[5.2]
  def change
    add_reference :bikes, :owner, foreign_key: { to_table: :users }
  end
end
