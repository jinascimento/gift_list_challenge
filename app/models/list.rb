# == Schema Information
#
# Table name: lists
#
#  id                  :bigint(8)        not null, primary key
#  name                :string
#  total_price         :float
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  category_id         :bigint(8)
#  product_items_count :integer
#

class List < ApplicationRecord
  belongs_to :category
  has_many :product_items
end
