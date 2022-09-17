class MenuitemsController < ApplicationController
  def index
    @items = MenuItem.where(menu_category_id: params[:id])
    render json: @items
  end
end