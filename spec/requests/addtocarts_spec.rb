require 'rails_helper'

RSpec.describe "Addtocarts", type: :request do
  describe "POST /addtocart" do
    it "adds an item to the cart" do
      headers = { "ACCEPT" => "application/json" }
      user = create(:user)
      menu_item = create(:menu_item)
      post "/addtocart", :params => {
        :user_id => user.id,
        :menu_category_id => menu_item.menu_category_id,
        :menu_item_id => menu_item.id,
        :menu_item_name => menu_item.name,
        :menu_item_price => menu_item.price
      }, :headers => headers

      expect(response).to have_http_status(:created)
    end

    it "increases the quantity of a cart item" do
      headers = { "ACCEPT" => "application/json" }
      cart = create(:cart)
      quantity = cart.quantity
      post "/addtocart", :params => {
        :user_id => cart.user_id,
        :menu_category_id => cart.menu_category_id,
        :menu_item_id => cart.menu_item_id,
        :menu_item_name => cart.menu_item_name,
        :menu_item_price => cart.menu_item_price
      }, :headers => headers

      expect(response).to have_http_status(:created)
      expect(Cart.find_by(user_id: cart.user_id, menu_item_id: cart.menu_item_id).quantity).to eq(quantity + 1)
    end
  end
end
