class GetcartController < ApplicationController
  def index
    cart = Cart.where(user_id: params[:userid])
    render json: cart
  end
end