FactoryBot.define do
  factory :cart do
    user_id { 1 }
    menu_category_id { 1 }
    menu_item_id { 1 }
    menu_item_name { "item" }
    menu_item_price { 100 }
    quantity { 1 }
    created_at { DateTime.now }
    updated_at { DateTime.now }
    user
  end
end
