require 'rails_helper'

RSpec.describe "Clearcarts", type: :request do
  describe "DELETE /clearcart/:user_id" do
    it "delete all cart items of a user" do
      cart = create(:cart)
      delete "/clearcart/#{cart.user_id}"
      expect(response).to have_http_status(204)
      expect(Cart.where(:user_id => cart.user_id).count).to eq(0)
    end
  end
end
