# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'pray_petitions/edit', type: :view do
  before(:each) do
    @pray_petition = assign(:pray_petition, PrayPetition.create!(
                                              name: 'MyString',
                                              phone_number: 'MyString',
                                              email: 'MyString',
                                              pray_for: 'MyString'
                                            ))
  end

  it 'renders the edit pray_petition form' do
    render

    assert_select 'form[action=?][method=?]', pray_petition_path(@pray_petition), 'post' do
      assert_select 'input[name=?]', 'pray_petition[name]'

      assert_select 'input[name=?]', 'pray_petition[phone_number]'

      assert_select 'input[name=?]', 'pray_petition[email]'

      assert_select 'input[name=?]', 'pray_petition[pray_for]'
    end
  end
end
