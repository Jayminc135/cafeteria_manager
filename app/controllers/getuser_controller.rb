class GetuserController < ApplicationController
  def index
    user = User.find_by(id: params[:userid])
    render json: user
  end
end