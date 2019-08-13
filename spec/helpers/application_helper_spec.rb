require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  it '#number_to_currency_br' do
    expect(number_to_currency_br(50)).to eql('R$ 50,00')
  end
end