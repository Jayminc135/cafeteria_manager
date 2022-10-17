require 'rails_helper'

RSpec.describe "Addfeedbacks", type: :request do
  describe "PUT /addfeedback/:order_id" do
    it "adds feedback to an order" do
      headers = { "ACCEPT" => "application/json" }
      order = create(:order)
      put "/addfeedback/#{order.id}", :params => {
        :rating => 5, :experience => "Excellent"
      }, :headers => headers

      expect(response).to have_http_status(:created)
      expect(Order.find(order.id).rating).to eq(5)
      expect(Order.find(order.id).experience).to eq("Excellent")
    end
  end
end