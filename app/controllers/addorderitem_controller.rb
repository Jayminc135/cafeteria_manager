class AddorderitemController < ApplicationController
  def create
    OrderItem.create(
      order_id: params[:order_id],
      menu_item_id: params[:menu_item_id],
      menu_item_name: params[:menu_item_name],
      menu_item_price: params[:menu_item_price],
      quantity: params[:quantity]
    )
    head :created
  end
end