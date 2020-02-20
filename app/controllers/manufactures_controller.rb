class ManufacturesController < ApplicationController
  def index
    @manufactures = Manufacture.all
  end
end
