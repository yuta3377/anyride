class BikesController < ApplicationController
  before_action :set_models, only: [:new, :create]

  def index
    @bikes = Bike.all
  end

  def show
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    if @bike.save! #後でsaveに変更する
      flash[:success] = "バイクが登録されました"
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def bike_params
    params.require(:bike).permit(:name, :price, :year, :displacement, :mileage, :description,
                                 :user_id, :manufacture_id, :prefecture_id, :bodytype_id)
  end

  def set_models
    @manufactures = Manufacture.all
    @bodytypes = Bodytype.all
    @prefectures = Prefecture.all
  end
end
