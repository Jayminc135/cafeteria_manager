class ChangeorderstatusController < ApplicationController
  def update
    Order.update(params[:id], :status => 'delivered')
  end
end