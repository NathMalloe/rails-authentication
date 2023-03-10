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

ariane_1 = Rocket.create!({ name: "Eagle", destination: "Pluton", description: "Eagle is a basic solo rocket in which you have to bring your own food/oxygen", price_per_earthday: "1000$", rating: 4.0, user: jeanpierre, address: "75 Rue d'Aboukir, Paris France" })
require "open-uri"
file = URI.open("https://res.cloudinary.com/dton44gcy/image/upload/v1674371385/pexels-pixabay-2159_umcbqg.jpg")
ariane_1.photo.attach(io: file, filename: "ariane1.png", content_type: "image/jpg")

ariane_2 = Rocket.create!({ name: "Wind", destination: "Mars", description: "Wind is a basic multiple guests rocket, bring your food", price_per_earthday: "2000$", rating: 4.2, user: jeanpierre, address: "70 avenue ledru rollin, Paris, France" })
file = URI.open("https://res.cloudinary.com/dton44gcy/image/upload/v1674142927/ay7z0avon645q6p1ccuo.jpg")
ariane_2.photo.attach(io: file, filename: "ariane2.png", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/dton44gcy/image/upload/v1674321181/jpd_profile_q0gj5a.png")
jeanpierre.photo.attach(io: file, filename: "jpd_profile.jpg", content_type: "image/jpg")


ariane_3 = Rocket.create!({ name: "Fire", destination: "Venus", description: "Fire is a medium solo rocket, with all amenities", price_per_earthday: "3000$", rating: 4.3, user: jeanpierre, address: "2 Place du Jeu de Paume, Vienne, France" })
file = URI.open("https://res.cloudinary.com/dton44gcy/image/upload/v1674142955/aq6bkxpaaucxungw5iv8.jpg")
ariane_3.photo.attach(io: file, filename: "ariane3.png", content_type: "image/jpg")

ariane_4 = Rocket.create!({ name: "Messenger", destination: "Moon", description: "Messenger is a premium solo rocket, with a restaurant module and a chef", price_per_earthday: "4000$", rating: 4.5, user: amine, address: "82 Avenue de la République, Bondy, France" })
file = URI.open("https://res.cloudinary.com/dton44gcy/image/upload/v1674371385/space-shuttle-ge86124b60_1920_kq67ct.jpg")
ariane_4.photo.attach(io: file, filename: "ariane4.png", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/dton44gcy/image/upload/v1674248768/ybxnuoodebwxmnzewjyy.jpg")
amine.photo.attach(io: file, filename: "amine_profile.jpg", content_type: "image/jpg")


ariane_5 = Rocket.create!({ name: "Nova", destination: "Saturn", description: "Nova is a premium multiple guests rocket, with a restaurant module and a chef", price_per_earthday: "5000$", rating: 4.6, user: amine, address: "15 Rue René Leroy, Niort, France" })
file = URI.open("https://res.cloudinary.com/dton44gcy/image/upload/v1674142972/denlofm2xnwworw31gf1.jpg")
ariane_5.photo.attach(io: file, filename: "ariane5.png", content_type: "image/jpg")

ariane_6 = Rocket.create!({ name: "Zephyra", destination: "Moon", description: "Zephyra is a confortable rocket, with medium capacity and a restaurant", price_per_earthday: "4500$", rating: 4.4, user: amine, address: "69 Rue des Écoles, Aubervilliers,  France" })
file = URI.open("https://res.cloudinary.com/dton44gcy/image/upload/v1674371384/space-gcff55505d_1920_coeqvg.jpg")
ariane_6.photo.attach(io: file, filename: "ariane6.png", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/dton44gcy/image/upload/v1674371244/yoda_profile_iis5yg.jpg")
nathanael.photo.attach(io: file, filename: "yoda_profile.jpg", content_type: "image/jpg")


ariane_7 = Rocket.create!({ name: "Vega", destination: "Moon", description: "Vega is a large rocket, with high capacity, a restaurant, a night-club and DJ", price_per_earthday: "8000$", rating: 4.3, user: nathanael, address: "85 rue La Boetie, Paris, France" })
file = URI.open("https://res.cloudinary.com/dton44gcy/image/upload/v1674371385/pexels-pixabay-41006_qa8nsk.jpg")
ariane_7.photo.attach(io: file, filename: "ariane7.png", content_type: "image/jpg")

ariane_8 = Rocket.create!({ name: "Altaïr", destination: "Mars", description: "Altaïr is a luxury rocket, with small capacity, a dining-room and a cinema", price_per_earthday: "10000$", rating: 4.9, user: nathanael, address: "13 Rue Oscar Roty, Paris, France" })
file = URI.open("https://res.cloudinary.com/dton44gcy/image/upload/v1674371385/pexels-spacex-23769_difmrc.jpg")
ariane_8.photo.attach(io: file, filename: "ariane8.png", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/dton44gcy/image/upload/v1674839485/einstein_profile_pxl1ji.jpg")
mohamed.photo.attach(io: file, filename: "einstein_profile.jpg", content_type: "image/jpg")


ariane_9 = Rocket.create!({ name: "Icarus", destination: "Pluton", description: "Icarus is a premium rocket, with medium capacity, nice furniture, a night-club and DJ", price_per_earthday: "7000$", rating: 4.6, user: amine, address: "7 Rue de l'Amazonie, Nantes, France" })
file = URI.open("https://res.cloudinary.com/dton44gcy/image/upload/v1674371385/pexels-pixabay-355906_mgpmti.jpg")
ariane_9.photo.attach(io: file, filename: "ariane9.png", content_type: "image/jpg")

  ariane_10 = Rocket.create!({ name: "Orion", destination: "Venus", description: "Orion is a luxury rocket, with high capacity, a high-end restaurant, a night-club and a Spa", price_per_earthday: "6000$", rating: 4.8, user: amine, address: "45 Rue Victor Hugo, Montrouge, France" })
file = URI.open("https://res.cloudinary.com/dton44gcy/image/upload/v1674371386/pexels-matheus-bertelli-3697826_vi4ehi.jpg")
ariane_10.photo.attach(io: file, filename: "ariane10.png", content_type: "image/jpg")
