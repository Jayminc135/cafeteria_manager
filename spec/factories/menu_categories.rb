FactoryBot.define do
  factory :menu_category do
    name { "category1" }
    created_at { DateTime.now }
    updated_at { DateTime.now }
  end
end
