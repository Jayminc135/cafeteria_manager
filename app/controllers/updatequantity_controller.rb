class UpdatequantityController < ApplicationController
  def index
    if(Cart.find(params[:cart_id]) == nil)
      render 0
    elsif(params[:quantity].to_s == 0.to_s)
      Cart.delete(params[:cart_id])
    else
      Cart.update(params[:cart_id], :quantity => params[:quantity])
    end
    render json: Cart.sum("menu_item_price*quantity")
  end
end