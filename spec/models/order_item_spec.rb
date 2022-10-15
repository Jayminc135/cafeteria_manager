require 'rails_helper'

RSpec.describe OrderItem, type: :model do
  it "must have an order id" do
    order_item = create(:order_item)
    expect(order_item.order_id).not_to be_nil
  end

  it "must have a menu item id" do
    order_item = create(:order_item)
    expect(order_item.menu_item_id).not_to be_nil
  end

  it "must have a menu item name" do
    order_item = create(:order_item)
    expect(order_item.menu_item_name).not_to be_nil
  end

  it "must have a menu item price" do
    order_item = create(:order_item)
    expect(order_item.menu_item_price).not_to be_nil
  end

  it "must have a quantity" do
    order_item = create(:order_item)
    expect(order_item.quantity).not_to be_nil
  end
end
