FactoryGirl.define do  
  sequence :name do |n|
    "BikeNo.#{n}"
  end

  factory :product do
    name
    description 'Nice Bike!'
    colour 'green'
    price 999.99
  end
end