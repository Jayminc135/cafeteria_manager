require 'rails_helper'

RSpec.describe "Addmenucategories", type: :request do
  describe "POST /addmenucategory" do
    it "creates a menu category" do
      headers = { "ACCEPT" => "application/json" }
      post "/addmenucategory", :params => {
        :category_name => "category1"
      }, :headers => headers

      expect(response).to have_http_status(:created)
    end
  end
end