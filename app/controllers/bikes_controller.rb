class BikesController < ApplicationController
  before_action :user_login?, only: [:new, :create]
  before_action :set_models, only: [:new, :create]

  def index
    @bikes = Bike.all
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    if @bike.save
      flash[:success] = "バイクが登録されました"
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @bike = Bike.find(params[:id])
    @user = User.find(@bike.user_id)
  end

  private

  def bike_params
    params.require(:bike).permit(:name, :price, :year, :displacement, :mileage, :description,
                                 :user_id, :manufacture_id, :prefecture_id, :bodytype_id)
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
