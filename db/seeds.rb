# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Frog.create(name: 'Froggy', species: 'Tree Frog', health: 100, wins: 0, losses: 0, stamina: 100, rarity: 'Common',
            level: 1)
Frog.create(name: 'Toadle', species: 'Big Frog', health: 70, wins: 0, losses: 0, stamina: 100, rarity: 'Rare',
            level: 1)
