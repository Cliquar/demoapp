FactoryGirl.define do  
  sequence :email do |n|
    "dudenr#{n}@example.com"
  end

  factory :user do
    email
    password '123456'
    first_name 'Peter'
    last_name 'Dampf'
    admin false
  end
end