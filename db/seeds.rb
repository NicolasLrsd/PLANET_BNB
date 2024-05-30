# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "open-uri"


User.destroy_all
Planet.destroy_all

florent = User.new(email: "flo@gmail.com", password: "password")
florent.save

nicolas = User.new(email: "nico@gmail.com", password: "password")
nicolas.save

remi = User.new(email: "remi@gmail.com", password: "password")
remi.save

holovon_iv = Planet.new(detail: "A few islands are dotted around an ocean covered by ice everywhere except near the equator. Tall mountains rise towards the sky.", name: "Waxabas VI", price: "800", user: florent)
holovon_iv.photo.attach(io: File.open("#{Rails.root}/app/assets/images/Holovon-IV.png"), filename: 'Holovon-IV.png', content_type: 'Holovon-IV.png')
holovon_iv.save!

waxathor_iii = Planet.new(detail: "An icy desert. Towering columns of hexagonal speckled stone. The local plants are red sponges.", name: "Torla V", price: "450", user: florent)
waxathor_iii.photo.attach(io: File.open("#{Rails.root}/app/assets/images/Waxathor-III.png"), filename: 'Waxathor-III.png', content_type: 'Waxathor-III.png')
waxathor_iii.save!

luprim_iii = Planet.new(detail: "Tundra and a few frozen lakes. Clusters of yellow fronds.", name: "Eaoll III", price: "1300", user: florent)
luprim_iii.photo.attach(io: File.open("#{Rails.root}/app/assets/images/Luprim-III.png"), filename: 'Luprim-III.png', content_type: 'Luprim-III.png')
luprim_iii.save!

cepiro_v = Planet.new(detail: "Shallow warm lakes and swamps. An impassable thicket of grey fungus covers the land.", name: "Prulm IV", price: "100", user: nicolas)
cepiro_v.photo.attach(io: File.open("#{Rails.root}/app/assets/images/Cepiro-V.png"), filename: 'Cepiro-V.png', content_type: 'Cepiro-V.png')
cepiro_v.save!

yala_ii = Planet.new(detail: "Dense jungles of tall trees cover Ipekra IV. Large water-filled caves are present just beneath the surface.", name: "Ipekra IV", price: "845", user: nicolas)
yala_ii.photo.attach(io: File.open("#{Rails.root}/app/assets/images/Yala-II.png"), filename: 'Yala-II.png', content_type: 'Yala-II.png')
yala_ii.save!

pilup_iv = Planet.new(detail: "A rocky desert lit by a bright blue sun. Sinkholes dot the land.", name: "Holovim IV", price: "630", user: nicolas)
pilup_iv.photo.attach(io: File.open("#{Rails.root}/app/assets/images/Pilup-IV.png"), filename: 'Pilup-IV.png', content_type: 'Pilup-IV.png')
pilup_iv.save!

alimvon_v = Planet.new(detail: "Shallow lakes and swamps. The plants are pink, spongy stalks with crimson tentacles at the top.", name: "Fragon IV", price: "1100", user: remi)
alimvon_v.photo.attach(io: File.open("#{Rails.root}/app/assets/images/Alimvon-V.png"), filename: 'Alimvon-V.png', content_type: 'Alimvon-V.png')
alimvon_v.save!

fracor_iii = Planet.new(detail: "A planet-wide, deep ocean.", name: "Metaleuth II", price: "43", user: remi)
fracor_iii.photo.attach(io: File.open("#{Rails.root}/app/assets/images/Fracor-III.png"), filename: 'Fracor-III.png', content_type: 'Fracor-III.png')
fracor_iii.save!

joro_iii = Planet.new(detail: "Black mud and small rivulets. Large water-filled caves are present just beneath the surface.", name: "Doam VI", price: "449", user: remi)
joro_iii.photo.attach(io: File.open("#{Rails.root}/app/assets/images/Joro-III.png"), filename: 'Joro-III.png', content_type: 'Joro-III.png')
joro_iii.save!
