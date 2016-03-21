require 'rails_helper'

describe Pilot do
  let(:luke) { create(:luke) }
  it '[CREATE] luke skywalker' do
    expect(luke.firstname).to eq 'luke'
  end
end
