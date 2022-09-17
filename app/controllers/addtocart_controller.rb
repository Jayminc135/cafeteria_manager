class AddtocartController < ApplicationController
  def create
    item = MenuItem.find_by(id: params[:menu_item_id])
    cart_item = Cart.find_by(user_id: params[:user_id], menu_item_id: params[:menu_item_id])

    if(cart_item == nil)
      Cart.create(
        user_id: params[:user_id],
        menu_category_id: params[:menu_category_id],
        menu_item_id: params[:menu_item_id],
        menu_item_name: item[:name],
        menu_item_price: item[:price],
        quantity: 1
      )
    else
      Cart.update(cart_item[:id], :quantity => cart_item[:quantity]+1)
    end

    head :created
  end
end