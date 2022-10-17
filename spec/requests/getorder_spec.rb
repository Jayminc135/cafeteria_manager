require 'rails_helper'

RSpec.describe "Getorder", type: :request do
  describe "GET /getorder" do
    it "returns a order by order id" do
      headers = { "ACCEPT" => "application/json" }
      order = create(:order)
      get "/getorder", :params => {
        :orderid => order.id
      }, :headers => headers

      expect(response.content_type).to eq("application/json; charset=utf-8")
      expect(response).to have_http_status(:ok)
      expect(response.body).to eq(Order.find(order.id).to_json)
    end
  end
end