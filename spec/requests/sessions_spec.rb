require 'rails_helper'

RSpec.describe "Sessions", type: :request do
  describe "GET /sessions" do
    it "authenticates a user" do
      headers = { "ACCEPT" => "application/json" }
      user = create(:user)
      get "/sessions", :params => {
        :email => user.email, :password => user.password
      }, :headers => headers

      expect(response.content_type).to eq("application/json; charset=utf-8")
      expect(response).to have_http_status(:ok)
      expect(response.body).to eq(user.to_json)
    end

    it "doesn't authenticate a user" do
      headers = { "ACCEPT" => "application/json" }
      create(:user)
      get "/sessions", :params => {
        :email => "john2@gmail.com", :password => "123456"
      }, :headers => headers

      expect(response).to have_http_status(204)
    end
  end
end
