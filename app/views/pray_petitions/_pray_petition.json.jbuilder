# frozen_string_literal: true

json.extract! pray_petition, :id, :name, :phone_number, :email, :pray_for, :created_at, :updated_at
json.url pray_petition_url(pray_petition, format: :json)
