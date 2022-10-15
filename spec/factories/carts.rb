FactoryBot.define do
  factory :cart do
    user_id { 1 }
    menu_category_id { 1 }
    menu_item_id { 1 }
    menu_item_name { "item" }
    menu_item_price { 100 }
    quantity { 1 }
    created_at { "2022-10-12 21:02:10" }
    updated_at { "2022-10-12 21:02:10" }
    user
  end
end
