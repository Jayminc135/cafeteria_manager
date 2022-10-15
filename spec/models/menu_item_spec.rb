require 'rails_helper'

RSpec.describe MenuItem, type: :model do
  it "must have a menu category id" do
    item = create(:menu_item)
    expect(item.menu_category_id).not_to be_nil
  end

  it "must have a name" do
    item = create(:menu_item)
    expect(item.name).not_to be_nil
  end

  it "must have a price" do
    item = create(:menu_item)
    expect(item.price).not_to be_nil
  end
end
