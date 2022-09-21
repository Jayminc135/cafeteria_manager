class AddorderController < ApplicationController
  def create
    Order.create(
      date: Date.today,
      user_id: params[:user_id],
      status: params[:status]
    )

    render json: Order.last.id
  end
end