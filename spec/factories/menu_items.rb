FactoryBot.define do
  factory :menu_item do
    menu_category_id { 1 }
    name { "item1" }
    description { "" }
    price { 100 }
    created_at { "2022-10-12 21:02:10" }
    updated_at { "2022-10-12 21:02:10" }
    menu_category
  end
end
