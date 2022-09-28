class AddfeedbackController < ApplicationController
  def update
    Order.update(params[:id], :rating => params[:rating], :experience => params[:experience])

    head :created
  end
end