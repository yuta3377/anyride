class BodytypesController < ApplicationController
  def index
    @bodytypes = Bodytype.all
  end
end
