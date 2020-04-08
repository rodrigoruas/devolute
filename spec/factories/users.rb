FactoryBot.define do
    factory :user do
        email { "adsdasdas#{rand(-100000)}}@example.com" }
        password { "password"} 
        password_confirmation { "password" }
      end
  end