class BikesController < ApplicationController
  before_action :user_login?, only: [:new, :create, :edit]
  before_action :set_models, only: [:new, :create, :edit]

  def index
  end

  def show
    @bike = Bike.find(params[:id])
    @user = User.find(@bike.owner_id)
  end

  def new
    @bike = Bike.new
    @bike.images.build
  end

  def create
    @bike = Bike.new(bike_params)
    if @bike.save
      params[:image].each do |i|
        @bike.images.create!(bike_id: @bike.id, image: i)
      end
      flash[:success] = "バイクが登録されました"
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @bike = current_user.bikes.first
  end

  def update
    @bike = Bike.find(params[:id])
    @bike.update(bike_params)
    redirect_to root_path
  end

  def destroy
  end

  def favorite
    @user = current_user
    @favorite_bikes = Favorite.where("user_id = ?", @user).map { |i| i.bike }
  end

  def popular
  end

  def new_arrival
    @new_arrival_bikes = Bike.where("created_at > ?", 1.month.ago).order(created_at: :desc)
  end

  def old
    @old_bikes = Bike.where("year < ?", 2000)
  end

  private

  def bike_params
    params.require(:bike).permit(:name, :price, :year, :displacement, :mileage, :description,
                                 :owner_id, :manufacture_id, :prefecture_id, :bodytype_id,
                                 image_attributes: [:id, :image, :bike_id])
  end

  def user_login?
    if current_user.blank?
      redirect_to users_path
    end
  end

  def set_models
    @manufactures = Manufacture.all
    @bodytypes = Bodytype.all
    @prefectures = Prefecture.all
  end
end
