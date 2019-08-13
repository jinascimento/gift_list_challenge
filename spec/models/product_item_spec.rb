require 'rails_helper'

RSpec.describe ProductItem, type: :model do
  describe 'validations' do
    it "is not valid without associations" do
      product_item = ProductItem.new
      expect(product_item).to_not be_valid
    end
  end

  describe 'associations' do
    it 'belongs_to list' do
      product_item = create(:product_item)
      expect(product_item.list).to be_kind_of(List)
    end

    it 'belongs_to product' do
      product_item = create(:product_item)
      expect(product_item.product).to be_kind_of(Product)
    end
  end
end
