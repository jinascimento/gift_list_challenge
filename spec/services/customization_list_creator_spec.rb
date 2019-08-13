require 'rails_helper'

RSpec.describe Lists::CustomizationListCreator, type: :service do
  describe 'Create customization list' do
    context 'happy way' do
      it "Should create customization list with validate params" do
        create(:category, name: 'customization')
        create_list = Lists::CustomizationListCreator.call(name: 'lista teste')
        expect(create_list).to be_truthy
      end
    end

    context 'bad way' do
      it "Not should create customization list without category created" do
        create_list = Lists::CustomizationListCreator.call(name: 'x')
        expect(create_list).to be_falsey
      end

    end
  end
end