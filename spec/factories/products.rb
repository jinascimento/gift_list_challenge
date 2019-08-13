FactoryBot.define do
  factory :product do
    description { Faker::Lorem.paragraph }
    name { Faker::Commerce.product_name }
    price { Faker::Commerce.price }

    category
  end
end
