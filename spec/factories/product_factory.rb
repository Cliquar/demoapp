FactoryGirl.define do  
  sequence :name do |n|
    "BikeNo.#{n}"
  end

  sequence :id do |n|
    n
  end

  factory :product do
    name
    description 'Nice Bike!'
    colour 'green'
    price 999.99
    image_url 'http://test.com/test.jpeg'
    carousel_img_url 'http://test.com/test.jpeg'
    id
  end
end