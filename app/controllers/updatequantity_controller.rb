class UpdatequantityController < ApplicationController
  def create
    if(params[:quantity].to_s == 0.to_s)
      Cart.delete(params[:cart_id])
    else
      Cart.update(params[:cart_id], :quantity => params[:quantity])
    end
    render json: Cart.where(:user_id => params[:user_id]).sum("menu_item_price*quantity")
  end
end