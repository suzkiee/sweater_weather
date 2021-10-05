class Api::V1::BackgroundsController < ApplicationController
  def index
    background = BackgroundFacade.get_background(params[:location])

    if background.instance_of?(String)
      render json: { error: 'Cannot find background' }, status: :bad_request
    else
      render json: ImageSerializer.new(background), status: :ok
    end
  end
end
