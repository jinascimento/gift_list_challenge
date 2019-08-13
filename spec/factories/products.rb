FactoryBot.define do
  factory :product do
    description { Faker::Lorem.paragraph }
    name { Faker::Commerce.product_name }
    price { Faker::Commerce.price }

    trait :reindex do
      after(:create) do |product, _evaluator|
        product.reindex(refresh: true)
      end
    end
    category
  end
end
