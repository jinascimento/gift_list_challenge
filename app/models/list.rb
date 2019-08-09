class List < ApplicationRecord
  belongs_to :category
  has_many :product_items
end
