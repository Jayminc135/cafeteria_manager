require 'rails_helper'

RSpec.describe "Updatequantities", type: :request do
  describe "POST /updatequantity" do
    it "update the quantity of a cart item and return Total Price" do
      headers = { "ACCEPT" => "application/json" }
      cart = create(:cart)
      post "/updatequantity", :params => {
        :cart_id => cart.id, :user_id => cart.user_id , :quantity => 2
      }, :headers => headers

      expect(response.content_type).to eq("application/json; charset=utf-8")
      expect(response).to have_http_status(:ok)
      expect(response.body).to eq(Cart.where(:user_id => cart.user_id).sum("menu_item_price*quantity").to_json)
    end

    it "delete a cart item if the quantity is 0 and return Total Price" do
      headers = { "ACCEPT" => "application/json" }
      cart = create(:cart)
      post "/updatequantity", :params => {
        :cart_id => cart.id, :user_id => cart.user_id , :quantity => 0
      }, :headers => headers

      expect(response.content_type).to eq("application/json; charset=utf-8")
      expect(response).to have_http_status(:ok)
      expect(response.body).to eq(Cart.where(:user_id => cart.user_id).sum("menu_item_price*quantity").to_json)
    end
  end
end
