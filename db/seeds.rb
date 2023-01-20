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

ariane_1 = Rocket.create!({ name: "Ariane1", destination: "Pluton", description: "Ariane1 is a basic solo rocket in which you have to bring your own food/oxygen", price_per_earthday: "1000$", rating: 4.7, user: jeanpierre })
ariane_2 = Rocket.create!({ name: "Ariane2", destination: "Mars", description: "Ariane2 is a basic multiple guests rocket, bring your food", price_per_earthday: "2000$", rating: 4.7, user: jeanpierre })
ariane_3 = Rocket.create!({ name: "Ariane3", destination: "Venus", description: "Ariane3 is a medium solo rocket, with all amenities", price_per_earthday: "3000$", rating: 4.7, user: jeanpierre })
ariane_4 = Rocket.create!({ name: "Ariane4", destination: "Earth", description: "Ariane4 is a premium solo rocket, with a restaurant module and a chef", price_per_earthday: "4000$", rating: 4.7, user: amine })
ariane_5 = Rocket.create!({ name: "Ariane5", destination: "Saturn", description: "Ariane5 is a premium multiple guests rocket, with a restaurant module and a chef", price_per_earthday: "5000$", rating: 4.7, user: amine })
ariane_6 = Rocket.create!({ name: "Ariane6", destination: "Moon", description: "Ariane6 is a luxury rocket, with high capacity, a restaurant, a night-club and DJ", price_per_earthday: "6000$", rating: 4.7, user: amine })

require "open-uri"

file = URI.open("https://res.cloudinary.com/dton44gcy/image/upload/v1674142938/zwfrd11wtkzutrbdppdn.jpg")
ariane_1.photo.attach(io: file, filename: "ariane1.png", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/dton44gcy/image/upload/v1674142927/ay7z0avon645q6p1ccuo.jpg")
ariane_2.photo.attach(io: file, filename: "ariane1.png", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/dton44gcy/image/upload/v1674142955/aq6bkxpaaucxungw5iv8.jpg")
ariane_3.photo.attach(io: file, filename: "ariane1.png", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/dton44gcy/image/upload/v1674142965/qvny5tifwfb9k3jtpdbr.jpg")
ariane_4.photo.attach(io: file, filename: "ariane1.png", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/dton44gcy/image/upload/v1674142972/denlofm2xnwworw31gf1.jpg")
ariane_5.photo.attach(io: file, filename: "ariane1.png", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/dton44gcy/image/upload/v1674144065/yo17oginicrucm9dyefi.jpg")
ariane_6.photo.attach(io: file, filename: "ariane1.png", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/dton44gcy/image/upload/v1674247430/k9ichph5ij06jis82b5s.jpg")
jeanpierre.photo.attach(io: file, filename: "jpd_profile.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/dton44gcy/image/upload/v1674248768/ybxnuoodebwxmnzewjyy.jpg")
amine.photo.attach(io: file, filename: "jpd_profile.jpg", content_type: "image/jpg")
