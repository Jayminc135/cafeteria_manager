class GetorderController < ApplicationController
  def index
    order = Order.find_by(id: params[:orderid])
    render json: order
  end
end