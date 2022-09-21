class GetordersController < ApplicationController
  def index
    if(params[:userid] == nil)
      order = Order.all
    else
      order = Order.where(user_id: params[:userid])
    end
    render json: order
  end
end