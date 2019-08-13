FactoryBot.define do
  factory :category do
    name { 'marriage' }

    transient do
      qtt_products { 3 }
      qtt_lists { 3 }
    end

    trait :with_products do
      after(:create) do |category, evaluator|
        create_list(:product, evaluator.qtt_products, category: category)
      end
    end

    trait :with_lists do
      after(:create) do |category, evaluator|
        create_list(:list, evaluator.qtt_lists, category: category)
      end
    end
  end
end
