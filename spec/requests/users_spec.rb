require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "POST /users" do
    it "creates a new user if not already created" do
      headers = { "ACCEPT" => "application/json" }
      post "/users", :params => {
        :first_name => "John", :last_name => "", :email => "john@gmail.com", :role => "customer", :password => "john@183"
      }, :headers => headers

      expect(response).to have_http_status(:created)
    end

    it "won't create a new user because it already exists" do
      headers = { "ACCEPT" => "application/json" }
      user = create(:user)
      post "/users", :params => {
        :first_name => user.first_name, :last_name => user.last_name, :email => user.email, :role => user.role, :password => user.password
      }, :headers => headers

      expect(response).to have_http_status(:ok)
    end
  end
end
