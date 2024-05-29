# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.destroy_all

florent = User.new(email: "flo@gmail.com", password: "password")
florent.save

nicolas = User.new(email: "nico@gmail.com", password: "password")
nicolas.save

remi = User.new(email: "remi@gmail.com", password: "password")
remi.save

Planet.new(detail: "A few islands are dotted around an ocean covered by ice everywhere except near the equator. Tall mountains rise towards the sky.", name: "Waxabas VI", price: "800", user: florent).save!
Planet.new(detail: "An icy desert. Towering columns of hexagonal speckled stone. The local plants are red sponges.", name: "Torla V", price: "450", user: florent).save!
Planet.new(detail: "Tundra and a few frozen lakes. Clusters of yellow fronds.", name: "Eaoll III", price: "1300", user: florent).save!

Planet.new(detail: "Shallow warm lakes and swamps. An impassable thicket of grey fungus covers the land.", name: "Prulm IV", price: "100", user: nicolas).save!
Planet.new(detail: "Dense jungles of tall trees cover Ipekra IV. Large water-filled caves are present just beneath the surface.", name: "Ipekra IV", price: "845", user: nicolas).save!
Planet.new(detail: "A rocky desert lit by a bright blue sun. Sinkholes dot the land.", name: "Holovim IV", price: "630", user: nicolas).save!

Planet.new(detail: "Shallow lakes and swamps. The plants are pink, spongy stalks with crimson tentacles at the top.", name: "Fragon IV", price: "1100", user: remi).save!
Planet.new(detail: "A planet-wide, deep ocean.", name: "Metaleuth II", price: "43", user: remi).save!
Planet.new(detail: "Black mud and small rivulets. Large water-filled caves are present just beneath the surface.", name: "Doam VI", price: "449", user: remi).save!
