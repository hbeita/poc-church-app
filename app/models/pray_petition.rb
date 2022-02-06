# frozen_string_literal: true

class PrayPetition < ApplicationRecord
  validates :name, presence: true
  validates :pray_for, presence: true
end
