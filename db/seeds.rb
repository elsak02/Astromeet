# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'open-uri'
require 'stringio'

Astrologist.destroy_all
User.destroy_all
puts "Creating User seeds..."


10.times do |user|
file = URI.open("https://source.unsplash.com/featured/?portrait")
user = User.new(email: Faker::Internet.email, password: "12kjdjjhD3",first_name: Faker::Name.first_name, last_name: Faker::Name.last_name , birth_date: Faker::Date.birthday(min_age: 18, max_age: 45), birth_time: Faker::Time.backward, birth_place: Faker::Address.city)
user.photo.attach(io: file, filename: 'astrologist.png', content_type: 'image/png')
user.save
end

puts "Creating Astrologist seeds..."
file = URI.open("https://source.unsplash.com/featured/?portrait")
nadine = User.create(email: "nadine.jane@gmail.com", password: "lkjlkj678", first_name: "Nadine", last_name: "Jane", birth_date: "1981-10-02", birth_time: "2000-01-01 22:10:47", birth_place: "New York City")
nadine.photo.attach(io: file, filename: 'astrologist.png', content_type: 'image/png')
astro_nadine = Astrologist.create(experience: "I am an Astrologer, using my background as a digital designer to make astrology accessible, relatable, and beautiful. Through my platform, I work to share the tools of  self-discovery and self-knowledge that my astrology practice has given me.", price: 90, user: nadine)

file = URI.open("https://source.unsplash.com/featured/?portrait")
sally = User.create(email: "sally.brompton@gmail.com", password: "lkjlkj678", first_name: "Sally", last_name: "Brompton", birth_date: "1971-10-25", birth_time: "2000-01-01 10:10:47", birth_place: "Washington")
sally.photo.attach(io: file, filename: 'astrologist.png', content_type: 'image/png')
astro_sally = Astrologist.create(experience: "I am a professional astrologer and writer. I trained and worked with the world-renowned astrologer Patric Walker for many years until his death in 1995 when I succeeded him as the astrologer for: The Mail on Sunday (UK), The New York Post, TV Guide (USA), The Globe and Mail (Canada)", price: 100, user: sally)

file = URI.open("https://source.unsplash.com/featured/?portrait")
aliza = User.create(email: "aliza.kelly@gmail.com", password: "lkjlkj678", first_name: "Aliza", last_name: "Kelly", birth_date: "1985-04-25", birth_time: "2000-01-01 15:10:47", birth_place: "San Diego")
aliza.photo.attach(io: file, filename: 'astrologist.png', content_type: 'image/png')
astro_aliza = Astrologist.create(experience: "As the resident astrologer of Cosmopolitan Magazine, my work appears in digital, print, and video. In addition to my monthly digital horoscopes, my cosmic advice column — Ask Astrolobestie — is published each month in Cosmopolitan’s print magazine. I also have contributed to numerous publications including Allure, Girlboss, BuzzFeed, Cheddar, Sanctuary, among many others.", price: 95, user: aliza)

file = URI.open("https://source.unsplash.com/featured/?portrait")
susan = User.create(email: "susan.miller@gmail.com", password: "lkjlkj678", first_name: "Susan", last_name: "Miller", birth_date: "1975-03-15", birth_time: "2000-01-01 12:10:47", birth_place: "Boston")
susan.photo.attach(io: file, filename: 'astrologist.png', content_type: 'image/png')
astro_susan = Astrologist.create(experience: "Best-selling book author, web publisher, and businesswoman, my achievements and contributions to the field of astrology have made myself an authority in my field. From Wall Street brokers to the models on fashion catwalks of Paris, Milan, and Tokyo; from readers in cafés in New York, Beijing, and Sao Paulo, to those discussing her words in New Delhi and Istanbul, people everywhere turn to me to advise, teach, lecture, and lead them toward success in both their personal life and business endeavors.", price: 120, user: susan)


