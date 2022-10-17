require 'rails_helper'

RSpec.describe "Addorderitems", type: :request do
  describe "POST /addorderitem" do
    it "adds an order item to the order" do
      headers = { "ACCEPT" => "application/json" }
      order = create(:order)
      menu_item = create(:menu_item)
      post "/addorderitem", :params => {
        :order_id => order.id,
        :menu_item_id => menu_item.id,
        :menu_item_name => menu_item.name,
        :menu_item_price => menu_item.price,
        :quantity => 1
      }, :headers => headers

      expect(response).to have_http_status(:created)
    end
  end
end