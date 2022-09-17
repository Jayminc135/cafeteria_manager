class MenucategoriesController < ApplicationController
  def index
    @categories = MenuCategory.all
    render json: @categories
  end
end