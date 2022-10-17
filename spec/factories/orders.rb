FactoryBot.define do
  factory :order do
    user_id { 1 }
    status { "pending delivery" }
    date { Date.today }
    rating {  }
    experience {  }
    created_at { DateTime.now }
    updated_at { DateTime.now }
    user
  end
end
