class BodytypesController < ApplicationController
  def index
    @bodytypes = Bodytype.all
  end

  def show
    @bodytype = Bodytype.find(params[:id])
  end
end
