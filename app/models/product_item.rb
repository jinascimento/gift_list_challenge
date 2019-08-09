class ProductItem < ApplicationRecord
  belongs_to :list, counter_cache: true
  belongs_to :product
end
