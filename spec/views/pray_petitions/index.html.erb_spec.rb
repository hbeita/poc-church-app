# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'pray_petitions/index', type: :view do
  before(:each) do
    assign(:pray_petitions, [
             PrayPetition.create!(
               name: 'Name',
               phone_number: 'Phone Number',
               email: 'Email',
               pray_for: 'Pray For'
             ),
             PrayPetition.create!(
               name: 'Name',
               phone_number: 'Phone Number',
               email: 'Email',
               pray_for: 'Pray For'
             )
           ])
  end

  it 'renders a list of pray_petitions' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Phone Number'.to_s, count: 2
    assert_select 'tr>td', text: 'Email'.to_s, count: 2
    assert_select 'tr>td', text: 'Pray For'.to_s, count: 2
  end
end
