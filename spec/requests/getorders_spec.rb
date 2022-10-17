require 'rails_helper'

RSpec.describe "Getorders", type: :request do
  describe "GET /getorders" do
    it "returns all the orders" do
      create(:order)
      get "/getorders"

      expect(response.content_type).to eq("application/json; charset=utf-8")
      expect(response).to have_http_status(:ok)
      expect(response.body).to eq(Order.all.to_json)
    end

    it "returns all the orders of a user" do
      headers = { "ACCEPT" => "application/json" }
      order = create(:order)
      create(:order, :user_id => order.user_id)
      get "/getorders", :params => {
        :userid => order.user_id
      }, :headers => headers

      expect(response.content_type).to eq("application/json; charset=utf-8")
      expect(response).to have_http_status(:ok)
      expect(response.body).to eq(Order.where(user_id: order.user_id).to_json)
    end
  end
end
