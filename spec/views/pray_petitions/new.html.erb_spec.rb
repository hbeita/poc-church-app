# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'pray_petitions/new', type: :view do
  before(:each) do
    assign(:pray_petition, PrayPetition.new(
                             name: 'MyString',
                             phone_number: 'MyString',
                             email: 'MyString',
                             pray_for: 'MyString'
                           ))
  end

  it 'renders new pray_petition form' do
    render

    assert_select 'form[action=?][method=?]', pray_petitions_path, 'post' do
      assert_select 'input[name=?]', 'pray_petition[name]'

      assert_select 'input[name=?]', 'pray_petition[phone_number]'

      assert_select 'input[name=?]', 'pray_petition[email]'

      assert_select 'input[name=?]', 'pray_petition[pray_for]'
    end
  end
end
