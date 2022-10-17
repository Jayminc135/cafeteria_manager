require 'rails_helper'

RSpec.describe "Menuitems", type: :request do
  describe "GET /menuitems" do
    it "gets all the items from a menu category" do
      headers = { "ACCEPT" => "application/json" }
      item = create(:menu_item)
      create(:menu_item, :menu_category_id => item.menu_category_id)
      get "/menuitems", :params => {
        :id => item.menu_category_id
      }, :headers => headers

      expect(response.content_type).to eq("application/json; charset=utf-8")
      expect(response).to have_http_status(:ok)
      expect(response.body).to eq(MenuItem.where(menu_category_id: item.menu_category_id).to_json)
    end
  end
end
