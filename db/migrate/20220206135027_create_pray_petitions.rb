# frozen_string_literal: true

class CreatePrayPetitions < ActiveRecord::Migration[7.0]
  def change
    create_table :pray_petitions do |t|
      t.string :name
      t.string :phone_number
      t.string :email
      t.string :pray_for

      t.timestamps
    end
  end
end
