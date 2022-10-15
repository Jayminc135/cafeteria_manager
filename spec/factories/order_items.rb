FactoryBot.define do
  factory :order_item do
    order_id { 1 }
    menu_item_id { 1 }
    menu_item_name { "item" }
    menu_item_price { 100 }
    quantity { 5 }
    created_at { "2022-10-12 21:02:10" }
    updated_at { "2022-10-12 21:02:10" }
    order
    menu_item
  end
end
