class Api::V1::BackgroundsController < ApplicationController
  def index 
    background = BackgroundFacade.get_background(params[:location])
    
    if background.class == String 
      render json: { error: "Cannot find background" }, status: 400
    else 
      render json: ImageSerializer.new(background), status: 200
    end
  end
end