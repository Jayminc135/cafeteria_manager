require 'rails_helper'

RSpec.describe "Getcarts", type: :request do
  describe "GET /getcart" do
    it "gets a cart of a user" do
      headers = { "ACCEPT" => "application/json" }
      cart = create(:cart)
      create(:cart, :user_id => cart.user_id)
      get "/getcart", :params => {
        :userid => cart.user_id
      }, :headers => headers

      expect(response.content_type).to eq("application/json; charset=utf-8")
      expect(response).to have_http_status(:ok)
      expect(response.body).to eq(Cart.where(user_id: cart.user_id).to_json)
    end
  end
end
