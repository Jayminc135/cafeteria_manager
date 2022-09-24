class UsersController < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    if(user == nil)
      User.create(
        first_name: params[:first_name],
        last_name: params[:last_name],
        email: params[:email],
        role: params[:role],
        password: params[:password],
      )
      head :created
    else
      head :ok
    end
  end
end