class BikesController < ApplicationController
  def index
    @bikes = Bike.all
  end

  def show
  end

  def new
    @bike = Bike.new
    @manufactures = Manufacture.all
    @bodytypes = Bodytype.all
    @prefectures = Prefecture.all
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.save
  end

  private

  def bike_params
      params.require(:bike).permit(:name, :price, :year, :displacement, :mileage, :description,
                                :user_id, :manufacture_id, :prefecture_id, :bodytype_id)
  end
end
