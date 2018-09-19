FactoryBot.define do
    factory :user do
      name { "MyString" }
      email { "MyString@gmail.com" }
      password { "MyPassword" }
      password_confirmation { "MyPassword" }
    end
end