require 'rails_helper'

RSpec.describe "Addorders", type: :request do
  describe "POST /addorder" do
    it "creates a new order and returns order id" do
      headers = { "ACCEPT" => "application/json" }
      user = create(:user)
      post "/addorder", :params => {
        :user_id => user.id, :status => "pending delivery"
      }, :headers => headers

      expect(response.content_type).to eq("application/json; charset=utf-8")
      expect(response).to have_http_status(:ok)
      expect(response.body).to eq(Order.last.id.to_json)
    end
  end
end