class BodytypesController < ApplicationController
  def index
    @bodytypes = Bodytype.all
  end

  def show
    @bodytype = Bodytype.find(params[:id])
    @bikes_of_bodytype = @bodytype.bikes
  end
end
