FactoryBot.define do
  factory :user do
    email { "hello@example.com" }
    password { "password" }
    password_confirmation { "password" }
  end
end
