require 'rails_helper'

RSpec.describe MenuCategory, type: :model do
  it "must have a category name" do
    category = create(:menu_category)
    expect(category.name).not_to be_nil
  end
end
