class Api::V1::SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(user_params[:password])
      render json: UsersSerializer.new(user), status: :created
    else
      render json: { error: 'Unable to log in. Please try again.' }, status: :unauthorized
    end
  end

  private

  def user_params
    params.permit(:email, :password)
  end
end
