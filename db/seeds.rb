# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Rocket.destroy_all
User.destroy_all

jeanpierre = User.create!({ first_name: "Jean Pierre", last_name: "Daverio", rating: 4.5, planet_race: "Human", email: "jpdaverio@gmail.com", password: "azerty" })
amine = User.create!({ first_name: "Amine", last_name: "Berrada", rating: 3.6, planet_race: "Martian", email: "amine@gmail.com", password: "security" })
Rocket.create!({ name: "Ariane1", destination: "Pluton", description: "Some description about Ariane", price_per_earthday: "1000$", rating: 4.7, user: jeanpierre })
Rocket.create!({ name: "Ariane2", destination: "Mars", description: "Some description about Ariane", price_per_earthday: "2000$", rating: 4.7, user: jeanpierre })
Rocket.create!({ name: "Ariane3", destination: "Venus", description: "Some description about Ariane", price_per_earthday: "3000$", rating: 4.7, user: jeanpierre })
Rocket.create!({ name: "Ariane4", destination: "Earth", description: "Some description about Ariane", price_per_earthday: "4000$", rating: 4.7, user: amine })
Rocket.create!({ name: "Ariane5", destination: "Saturn", description: "Some description about Ariane", price_per_earthday: "5000$", rating: 4.7, user: amine })
Rocket.create!({ name: "Ariane6", destination: "Moon", description: "Some description about Ariane", price_per_earthday: "6000$", rating: 4.7, user: amine })

