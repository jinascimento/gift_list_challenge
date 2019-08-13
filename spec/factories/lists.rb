FactoryBot.define do
  factory :list do
    name { 'marriage' }
    category

    transient do
      qtt_product_items { 3 }
    end

    trait :with_product_items do
      after(:create) do |list, evaluator|
        create_list(:product_item, evaluator.qtt_product_items, list: list)
      end
    end
  end
end
