FactoryBot.define do
  factory :user do
    role { "customer" }
    first_name { "John" }
    last_name {  }
    sequence(:email) {|n| "john#{n}@gmail.com" }
    password { "john@183" }
    created_at { DateTime.now }
    updated_at { DateTime.now }
  end
end
