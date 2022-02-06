# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PrayPetitionsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/pray_petitions').to route_to('pray_petitions#index')
    end

    it 'routes to #new' do
      expect(get: '/pray_petitions/new').to route_to('pray_petitions#new')
    end

    it 'routes to #show' do
      expect(get: '/pray_petitions/1').to route_to('pray_petitions#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/pray_petitions/1/edit').to route_to('pray_petitions#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/pray_petitions').to route_to('pray_petitions#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/pray_petitions/1').to route_to('pray_petitions#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/pray_petitions/1').to route_to('pray_petitions#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/pray_petitions/1').to route_to('pray_petitions#destroy', id: '1')
    end
  end
end
