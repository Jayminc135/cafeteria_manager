require 'rails_helper'

RSpec.describe "Addmenuitems", type: :request do
  describe "POST /addmenuitem" do
    it "creates a menu item" do
      headers = { "ACCEPT" => "application/json" }
      category = create(:menu_category)
      post "/addmenuitem", :params => {
        :category_id => category.id, :item_name => "item1", :description => "Description of item1", :price => 50
      }, :headers => headers

      expect(response).to have_http_status(:created)
    end
  end
end