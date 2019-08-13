require 'rails_helper'

RSpec.describe ListsController, type: :controller do
  context 'Users is logged in' do
    login_user

    describe 'User' do
      it "should have a current_user" do
        expect(subject.current_user).to_not eq(nil)
      end
    end

    it "#index" do
      get :index
      expect(response).to be_success
    end

    it "#show" do
      product_item = create(:product_item)
      get :show, params: { id: product_item.list.id }

      expect(assigns(:product_items)).to_not be_nil
    end

    it "#create" do
      list = create(:list)
      create(:category, name: 'customization')
      post :create, params: { list: {name: list.name }}, xhr: true
      expect(assigns(:lists)).to_not be_nil
    end
  end

  context "User isn't logged in" do
    it "should return status 302 (redirect login)" do
      get :new, params: { list_id: 1 }
      expect(response).to have_http_status(302)
    end
  end
end
