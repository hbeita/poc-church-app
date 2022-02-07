# frozen_string_literal: true

class AddReadToPrayPetition < ActiveRecord::Migration[7.0]
  def change
    add_column :pray_petitions, :read, :boolean
  end
end
