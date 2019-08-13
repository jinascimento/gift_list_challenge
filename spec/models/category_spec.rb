require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'validates' do
    it "is not valid without a name" do
      category = Category.new(name: nil)
      expect(category).to_not be_valid
    end
  end

  describe 'associations' do
    it 'has_many products' do
      category = create(:category, :with_products, qtt_products: 3)
      expect(category.products.count).to eq(3)
    end

    it 'has_many lists' do
      category = create(:category, :with_lists, qtt_lists: 5)
      expect(category.lists.count).to eq(5)
    end
  end
end
