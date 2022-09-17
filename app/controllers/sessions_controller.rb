class SessionsController < ApplicationController
  def index
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      render json: user
    else
      head 204
    end
  end
end