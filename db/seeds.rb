# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


State.create!(id: 1, name: "Antioquia")
State.create!(id: 2, name: "Cundinamarca")
State.create!(id: 3, name: "Cordoba")

City.create!(state_id: 1, name: "Medellin")
City.create!(state_id: 1, name: "Santa Fe")
City.create!(state_id: 1, name: "Jardin")

City.create!(state_id: 2, name: "Bogotá")
City.create!(state_id: 2, name: "Chia")
City.create!(state_id: 2, name: "Anapoina")

City.create!(state_id: 3, name: "Monteria")
City.create!(state_id: 3, name: "Cereté")
City.create!(state_id: 3, name: "Montelibano")



 

City.create! do |city|
  city.name = "Medellin"
  city.state_id = 1
end