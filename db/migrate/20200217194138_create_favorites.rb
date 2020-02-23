class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.references :user, foreign_key: true
      t.references :bike, foreign_key: true

      t.timestamps
      t.index [:user_id, :bike_id], unique: true #user_idとbike_idの重複を防ぐ（お気に入り登録は一度だけ）
    end
  end
end
