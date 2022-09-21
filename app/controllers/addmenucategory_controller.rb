class AddmenucategoryController < ApplicationController
  def create
    MenuCategory.create(
      name: params[:category_name]
    )
    head :created
  end
end