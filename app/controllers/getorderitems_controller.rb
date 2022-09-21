class GetorderitemsController < ApplicationController
  def index
    orderitems = OrderItem.where(order_id: params[:orderid])
    render json: orderitems
  end
end