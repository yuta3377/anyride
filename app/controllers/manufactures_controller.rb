class ManufacturesController < ApplicationController
  def index
    @manufactures = Manufacture.all
  end

  def show
    @manufacture = Manufacture.find(params[:id])
  end
end
