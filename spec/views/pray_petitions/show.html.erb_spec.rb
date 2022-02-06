# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'pray_petitions/show', type: :view do
  before(:each) do
    @pray_petition = assign(:pray_petition, PrayPetition.create!(
                                              name: 'Name',
                                              phone_number: 'Phone Number',
                                              email: 'Email',
                                              pray_for: 'Pray For'
                                            ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Phone Number/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Pray For/)
  end
end
