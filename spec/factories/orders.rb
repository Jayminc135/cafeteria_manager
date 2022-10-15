FactoryBot.define do
  factory :order do
    user_id { 1 }
    status { "delivered" }
    date { "2022-10-12" }
    rating { 4 }
    experience { "Good service." }
    created_at { "2022-10-12 21:02:10" }
    updated_at { "2022-10-12 21:02:10" }
    user
  end
end
