class UsersController < ApplicationController
  def create
    User.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      role: params[:role],
      password: params[:password],
    )
    head :created
  end
end