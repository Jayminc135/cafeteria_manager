FactoryBot.define do
  factory :menu_item do
    menu_category_id { 1 }
    name { "item1" }
    description { "" }
    price { 100 }
    created_at { DateTime.now }
    updated_at { DateTime.now }
    menu_category
  end
end