FactoryGirl.define do
  factory :products_category do
    
  end
  factory :category do
    name "MyString"
  end

  factory :user do
    name "MyName"
    email "MyName@email.com"
    password "MyPassword"
    password_confirmation "MyPassword"
  end

  factory :product do
    name { Faker::Commerce.product_name }
    price { Faker::Commerce.price }
    description { Faker::Lorem.sentence }
    image_url { Faker::Avatar.image }
  end
end
