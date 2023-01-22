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
nathanael = User.create!({ first_name: "Nathanaël", last_name: "Star", rating: 4.9, planet_race: "Human", email: "nath@gmail.com", password: "azerty" })
mohamed = User.create!({ first_name: "Mohamed", last_name: "Berrada", rating: 4.8, planet_race: "Human", email: "mohamed@gmail.com", password: "azerty" })

ariane_1 = Rocket.create!({ name: "Ariane1", destination: "Pluton", description: "Ariane1 is a basic solo rocket in which you have to bring your own food/oxygen", price_per_earthday: "1000$", rating: 4.0, user: jeanpierre })
ariane_2 = Rocket.create!({ name: "Ariane2", destination: "Mars", description: "Ariane2 is a basic multiple guests rocket, bring your food", price_per_earthday: "2000$", rating: 4.2, user: jeanpierre })
ariane_3 = Rocket.create!({ name: "Ariane3", destination: "Venus", description: "Ariane3 is a medium solo rocket, with all amenities", price_per_earthday: "3000$", rating: 4.3, user: jeanpierre })
ariane_4 = Rocket.create!({ name: "Ariane4", destination: "Moon", description: "Ariane4 is a premium solo rocket, with a restaurant module and a chef", price_per_earthday: "4000$", rating: 4.5, user: amine })
ariane_5 = Rocket.create!({ name: "Ariane5", destination: "Saturn", description: "Ariane5 is a premium multiple guests rocket, with a restaurant module and a chef", price_per_earthday: "5000$", rating: 4.6, user: amine })
ariane_6 = Rocket.create!({ name: "Ariane6", destination: "Moon", description: "Ariane6 is a confortable rocket, with medium capacity and a restaurant", price_per_earthday: "4500$", rating: 4.4, user: amine })
ariane_7 = Rocket.create!({ name: "Ariane7", destination: "Moon", description: "Ariane7 is a large rocket, with high capacity, a restaurant, a night-club and DJ", price_per_earthday: "8000$", rating: 4.3, user: amine })
ariane_8 = Rocket.create!({ name: "Ariane8", destination: "Mars", description: "Ariane8 is a luxury rocket, with small capacity, a dining-room and a cinema", price_per_earthday: "10000$", rating: 4.9, user: amine })
ariane_9 = Rocket.create!({ name: "Ariane9", destination: "Pluton", description: "Ariane9 is a premium rocket, with medium capacity, nice furniture, a night-club and DJ", price_per_earthday: "7000$", rating: 4.6, user: amine })
ariane_10 = Rocket.create!({ name: "Ariane10", destination: "Venus", description: "Ariane10 is a luxury rocket, with high capacity, a high-end restaurant, a night-club and a Spa", price_per_earthday: "6000$", rating: 4.8, user: amine })

require "open-uri"

file = URI.open("https://res.cloudinary.com/dton44gcy/image/upload/v1674371385/pexels-pixabay-2159_umcbqg.jpg")
ariane_1.photo.attach(io: file, filename: "ariane1.png", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/dton44gcy/image/upload/v1674142927/ay7z0avon645q6p1ccuo.jpg")
ariane_2.photo.attach(io: file, filename: "ariane2.png", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/dton44gcy/image/upload/v1674142955/aq6bkxpaaucxungw5iv8.jpg")
ariane_3.photo.attach(io: file, filename: "ariane3.png", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/dton44gcy/image/upload/v1674371385/space-shuttle-ge86124b60_1920_kq67ct.jpg")
ariane_4.photo.attach(io: file, filename: "ariane4.png", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/dton44gcy/image/upload/v1674142972/denlofm2xnwworw31gf1.jpg")
ariane_5.photo.attach(io: file, filename: "ariane5.png", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/dton44gcy/image/upload/v1674371384/space-gcff55505d_1920_coeqvg.jpg")
ariane_6.photo.attach(io: file, filename: "ariane6.png", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/dton44gcy/image/upload/v1674371385/pexels-pixabay-41006_qa8nsk.jpg")
ariane_7.photo.attach(io: file, filename: "ariane7.png", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/dton44gcy/image/upload/v1674371385/pexels-spacex-23769_difmrc.jpg")
ariane_8.photo.attach(io: file, filename: "ariane8.png", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/dton44gcy/image/upload/v1674371385/pexels-pixabay-355906_mgpmti.jpg")
ariane_9.photo.attach(io: file, filename: "ariane9.png", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/dton44gcy/image/upload/v1674371386/pexels-matheus-bertelli-3697826_vi4ehi.jpg")
ariane_10.photo.attach(io: file, filename: "ariane10.png", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/dton44gcy/image/upload/v1674321181/jpd_profile_q0gj5a.png")
jeanpierre.photo.attach(io: file, filename: "jpd_profile.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/dton44gcy/image/upload/v1674248768/ybxnuoodebwxmnzewjyy.jpg")
amine.photo.attach(io: file, filename: "jpd_profile.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/dton44gcy/image/upload/v1674371244/yoda_profile_iis5yg.jpg")
nathanael.photo.attach(io: file, filename: "jpd_profile.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/dton44gcy/image/upload/v1674371160/einstein_profile_bhlaus.jpg")
mohamed.photo.attach(io: file, filename: "jpd_profile.jpg", content_type: "image/jpg")
