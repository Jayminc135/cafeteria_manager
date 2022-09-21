class AddmenuitemController < ApplicationController
  def create
    MenuItem.create(
      menu_category_id: params[:category_id],
      name: params[:item_name],
      description: params[:description],
      price: params[:price]
    )
    head :created
  end
end