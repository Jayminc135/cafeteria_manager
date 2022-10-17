FactoryBot.define do
  factory :order_item do
    order_id { 1 }
    menu_item_id { 1 }
    menu_item_name { "item" }
    menu_item_price { 100 }
    quantity { 5 }
    created_at { DateTime.now }
    updated_at { DateTime.now }
    order
    menu_item
  end
end
