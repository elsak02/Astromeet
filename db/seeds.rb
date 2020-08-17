# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'open-uri'

User.destroy_all
puts "Creating User seeds..."


20.times do |user|
file = URI.open(Faker::Avatar.image(slug: "my-own-slug", size: "50x50", format: "jpg"))
user = User.new(email: Faker::Internet.email, password: "12kjdjjhD3",first_name: Faker::Name.first_name, last_name: Faker::Name.last_name , birth_date: Faker::Date.birthday(min_age: 18, max_age: 45), birth_time: Faker::Time.backward, birth_place: Faker::Address.city)
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user.save
p user
end

#nadine = User.create(first_name: "Nadine", last_name: "Jane", birth_date: )
#puts "Creating Astrologist seeds..."
#Astrologist.create(description: "I am an Astrologer, using my background as a digital designer to make astrology accessible, relatable, and beautiful. Through my platform, I work to share the tools of  self-discovery and self-knowledge that my astrology practice has given me.
#{}", price: 90)
#Astrologist.create(description: )
