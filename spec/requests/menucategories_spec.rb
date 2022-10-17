require 'rails_helper'

RSpec.describe "Menucategories", type: :request do
  describe "GET /menucategories" do
    it "gets all the menu categories" do
      create(:menu_category)
      get "/menucategories"

      expect(response.content_type).to eq("application/json; charset=utf-8")
      expect(response).to have_http_status(:ok)
      expect(response.body).to eq((MenuCategory.all).to_json)
    end
  end
end
