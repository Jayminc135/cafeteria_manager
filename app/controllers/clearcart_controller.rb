class ClearcartController < ApplicationController
  def destroy
    Cart.where(user_id: params[:id]).delete_all
  end
end