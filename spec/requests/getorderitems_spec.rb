require 'rails_helper'

RSpec.describe "Getorderitems", type: :request do
  describe "GET /getorderitems" do
    it "returns all the order items of a order" do
      headers = { "ACCEPT" => "application/json" }
      order_item = create(:order_item)
      get "/getorderitems", :params => {
        :orderid => order_item.order_id
      }, :headers => headers

      expect(response.content_type).to eq("application/json; charset=utf-8")
      expect(response).to have_http_status(:ok)
      expect(response.body).to eq(OrderItem.where(order_id: order_item.order_id).to_json)
    end
  end
end
