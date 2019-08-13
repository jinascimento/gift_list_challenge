require 'rails_helper'

RSpec.describe Categories::ProductsController, type: :controller do
  context 'User is logged in' do
    login_user

    describe 'User' do
      it "should have a current_user" do
        expect(subject.current_user).to_not eq(nil)
      end
    end

    it "#search" do
      get :search, params: { category_id: 1 }, xhr: true
      expect(response).to be_successful
    end

    it "Should return products searched" do
      product = create(:product, :reindex, name: 'apple')
      get :search, params: { category_id: product.category_id, name: product.name }, xhr: true

      expect( assigns(:products).results.find {|i| i[:id] == product.id }).to_not be_nil
    end
  end

  context "User isn't logged in" do
    it "should return status 401 (not authorized)" do
      get :search, params: { category_id: 1 }, xhr: true
      expect(response).to have_http_status(401)
    end
  end
end
