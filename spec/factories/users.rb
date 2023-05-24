FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "foo#{n}@example.com" }
    password { "123456ab" }
    password_confirmation { "123456ab" }
  end
end
