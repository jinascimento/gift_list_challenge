require 'rails_helper'

RSpec.describe Lists::ProductItemsController, type: :controller do
  context 'Users is logged in' do
    login_user

    describe 'User' do
      it "should have a current_user" do
        expect(subject.current_user).to_not eq(nil)
      end
    end

    it "#new" do
      get :new, params: { list_id: 1 }
      expect(response).to be_success
    end

    it "#create" do
      product = create_list(:product, 3)
      product_ids = product.map {|p| p.id }
      list = create(:list)
      post :create, params: { product_ids: product_ids, list_id: list.id }, xhr: true

      expect(assigns(:list).product_items.map { |p| p.product_id }).to match_array(product_ids)
    end
  end
end
