FactoryBot.define do
  factory :user do
    role { "customer" }
    first_name { "Sahil" }
    last_name { "Kumar" }
    sequence(:email) {|n| "sahil#{n}@gmail.com" }
    password { "sahil@183" }
    created_at { "2022-10-12 21:02:10" }
    updated_at { "2022-10-12 21:02:10" }
  end
end
