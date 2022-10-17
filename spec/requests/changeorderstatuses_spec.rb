require 'rails_helper'

RSpec.describe "Changeorderstatuses", type: :request do
  describe "PUT /changeorderstatus/:order_id" do
    it "change order status to 'delivered'" do
      order = create(:order)
      put "/changeorderstatus/#{order.id}"

      expect(response).to have_http_status(204)
      expect(Order.find(order.id).status).to eq("delivered")
    end
  end
end