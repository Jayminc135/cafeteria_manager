require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "POST /users" do
    it "Creates a new user if not already created" do
    headers = { "ACCEPT" => "application/json" }
    post "/users", :params => {:user => { :first_name => "rspec test",
                                          :last_name => "rspec test",
                                          :email => "abc@gmail.com",
                                          :role => "rspec test",
                                          :password => "rspec test",}}, :headers => headers

    expect(response.content_type).to eq("application/json")
    expect(response).to have_http_status(:created)
    end
  end
end
