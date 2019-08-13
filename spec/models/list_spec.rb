require 'rails_helper'

RSpec.describe List, type: :model do
  describe 'validates' do
    it "is not valid without a name" do
      list = List.new(name: nil)
      expect(list).to_not be_valid
    end
  end

  describe 'associations' do
    it 'belongs_to category' do
      list = create(:list)
      expect(list.category).to be_kind_of(Category)
    end

    it 'has_many lists' do
      list = create(:list, :with_product_items, qtt_product_items: 5)
      expect(list.product_items.count).to eq(5)
    end
  end
end
