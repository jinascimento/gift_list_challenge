require 'rails_helper'

RSpec.describe Lists::ProductItems::ProductItemCreator, type: :service do
  describe 'Create product items' do
    context 'happy way' do
      it "Should create product items with validate params" do
        product = create_list(:product, 3)
        list = create(:list)
        product_ids = product.map { |p| p.id }
        create_product_items = Lists::ProductItems::ProductItemCreator.call({list_id: list.id}, product_ids)
        expect(create_product_items).to include(true)
      end
    end

    context 'bad way' do
      it "Not should create customization list without category created" do
        create_product_items = Lists::ProductItems::ProductItemCreator.call({list_id: '1'}, [1])
        expect(create_product_items).to include(false)
      end
    end
  end
end