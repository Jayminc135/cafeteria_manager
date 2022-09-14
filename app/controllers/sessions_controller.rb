class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      head :ok
    else
      head :unauthorized
    end
  end
end