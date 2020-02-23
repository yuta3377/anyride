class FavoritesController < ApplicationController
  def create
    bike = Bike.find(params[:bike_id])
    current_user.like(bike)
    flash[:success] = "お気に入りに追加しました！"
    redirect_back(fallback_location: root_path)
  end

  def destroy
    bike = Bike.find(params[:bike_id])
    current_user.unlike(bike)
    flash[:success] = "お気に入りから削除しました！"
    redirect_back(fallback_location: root_path)
  end
end
