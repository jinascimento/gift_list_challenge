require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'validates' do
    it "is not valid without a name" do
      product = Product.new(name: nil)
      expect(product).to_not be_valid
    end
  end

  describe 'associations' do
    it 'belongs_to category' do
      product = create(:product)
      expect(product.category).to be_kind_of(Category)
    end

    it 'has_one product_item' do
      product = create(:product, product_item: create(:product_item))
      expect(product.product_item).to be_kind_of(ProductItem)
    end
  end
end
