FactoryBot.define do
    factory :user do
      name { "MyString" }
      email { "MyString" }
      password { "MyPassword" }
      encrypted_password { "MyPassword" }
    end
end