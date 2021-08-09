class Api::V1::BackgroundController < ApplicationController
  def index 
    background = BackgroundFacade.get_background(params[:query])
    require 'pry'; binding.pry 
    render json: BackgroundSerializer.new(background), status: 200
  end
end