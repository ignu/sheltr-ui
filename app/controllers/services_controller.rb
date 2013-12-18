class ServicesController < ApplicationController
  def index
    respond_to do |format|
      format.html { render }
      format.json { render json: ohana.locations }
    end
  end
end
