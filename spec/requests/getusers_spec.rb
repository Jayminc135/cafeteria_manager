require 'rails_helper'

RSpec.describe "Getusers", type: :request do
  describe "GET /getuser" do
    it "returns a user by user id" do
      headers = { "ACCEPT" => "application/json" }
      user = create(:user)
      get "/getuser", :params => {
        :userid => user.id
      }, :headers => headers

      expect(response.content_type).to eq("application/json; charset=utf-8")
      expect(response).to have_http_status(:ok)
      expect(response.body).to eq(User.find_by(id: user.id).to_json)
    end
  end
end