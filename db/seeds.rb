# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

def seed_admin_users
  admins = %w[ adriana antonio brayan candy hector hellen jeka kenny kimberly luisa
               margarita martita mayu_g mayu_v pastor_rodolfo pastora_ana rosario]

  admins.each do |admin_account|
    email = "#{admin_account}@acmv.com"
    User.find_or_create_by!(email: email) { |user| user.password = 'acmv1234' }
  end
end

seed_admin_users
