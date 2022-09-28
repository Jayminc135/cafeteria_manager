require 'rails_helper'

RSpec.describe "Addmenucategories", type: :request do
  describe "POST /addmenucategory" do
      it "Adds a category to MenuCategory and sends a http response" do
        headers = { "ACCEPT" => "application/json" }
        post "/addmenucategory", :params => { :category_name => "rspec test"}, :headers => headers

        expect(response.content_type).to eq("application/json")
        expect(response).to have_http_status(:created)
      end
    end
end
