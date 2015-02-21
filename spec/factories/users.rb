FactoryGirl.define do
  factory :user do
    sequence(:email) { |i| "email#{i}@workout.com" }
    password "password"

    trait :admin do
      admin true
    end
  end
end
