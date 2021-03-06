# == Schema Information
#
# Table name: products
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  code        :integer
#  description :string
#  price       :float
#  category_id :bigint(8)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Product < ApplicationRecord
  searchkick

  validates :name, presence: true
  scope :search_on_elasticsearch, ->(name, category_id, page, per_page) { search(name.present? ? name: '*',
                                                                                 fields: [:name, :description],
                                                                                 where: { category_id: category_id },
                                                                                 page: page, per_page: per_page || 10)
  }
  belongs_to :category
  has_one :product_item
end
