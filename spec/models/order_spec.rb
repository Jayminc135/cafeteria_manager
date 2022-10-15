require 'rails_helper'

RSpec.describe Order, type: :model do
  it "must have a user id" do
    order = create(:order)
    expect(order.user_id).not_to be_nil
  end

  it "must have a status" do
    order = create(:order)
    expect(order.status).not_to be_nil
  end

  it "must have a date" do
    order = create(:order)
    expect(order.date).not_to be_nil
  end
end
