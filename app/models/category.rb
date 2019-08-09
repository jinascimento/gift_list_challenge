class Category < ApplicationRecord
  has_many :products
  has_many :lists
end
