# == Schema Information
#
# Table name: product_items
#
#  id         :bigint(8)        not null, primary key
#  product_id :bigint(8)
#  list_id    :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ProductItem < ApplicationRecord
  belongs_to :list, counter_cache: true
  belongs_to :product
end
