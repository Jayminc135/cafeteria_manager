require 'rails_helper'

RSpec.describe Cart, type: :model do
  it "must have an user id" do
    cart = create(:cart)
    expect(cart.user_id).not_to be_nil
  end

  it "must have a menu category id" do
    cart = create(:cart)
    expect(cart.menu_category_id).not_to be_nil
  end

  it "must have a menu item id" do
    cart = create(:cart)
    expect(cart.menu_item_id).not_to be_nil
  end

  it "must have a menu item name" do
    cart = create(:cart)
    expect(cart.menu_item_name).not_to be_nil
  end

  it "must have a menu item price" do
    cart = create(:cart)
    expect(cart.menu_item_price).not_to be_nil
  end

  it "must have a quantity" do
    cart = create(:cart)
    expect(cart.quantity).not_to be_nil
  end
end
