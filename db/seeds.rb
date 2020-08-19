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

file = URI.open("https://ca.slack-edge.com/T02NE0241-U016QP7SC3T-08569d0aebdd-512")
mathilda_test = User.new(email: "mathilda@astromeet.com", password: "123456",first_name: "Mathilda", last_name: "Djamdjan", birth_date: "1993-10-02", birth_time: "2000-01-01 22:10:47", birth_place: "Paris")
mathilda_test.photo.attach(io: file, filename: 'astrologist.png', content_type: 'image/png')
mathilda_test.save

file = URI.open("https://ca.slack-edge.com/T02NE0241-U017200856C-a05cbb7994a7-512")
quentin_test = User.new(email: "quentin@astromeet.com", password: "123456",first_name: "Quentin", last_name: "Clement", birth_date: "1993-10-02", birth_time: "2000-01-01 22:10:47", birth_place: "Paris")
quentin_test.photo.attach(io: file, filename: 'astrologist.png', content_type: 'image/png')
quentin_test.save

# 10.times do |user|
# file = URI.open("https://source.unsplash.com/featured/?portrait")
# user = User.new(email: Faker::Internet.email, password: "12kjdjjhD3",first_name: Faker::Name.first_name, last_name: Faker::Name.last_name , birth_date: Faker::Date.birthday(min_age: 18, max_age: 45), birth_time: Faker::Time.backward, birth_place: Faker::Address.city)
# user.photo.attach(io: file, filename: 'astrologist.png', content_type: 'image/png')
# user.save
# end

puts "Creating Astrologist seeds..."
file = URI.open("https://s.abcnews.com/images/GMA/nadine-jane-11-abc-jef-200324_hpMain_4x3_608.jpg")
nadine = User.create(email: "nadine.jane@gmail.com", password: "lkjlkj678", first_name: "Nadine", last_name: "Jane", birth_date: "1981-10-02", birth_time: "2000-01-01 22:10:47", birth_place: "New York City")
nadine.photo.attach(io: file, filename: 'astrologist.png', content_type: 'image/png')
astro_nadine = Astrologist.create(experience: "I am an Astrologer, using my background as a digital designer to make astrology accessible, relatable, and beautiful. Through my platform, I work to share the tools of  self-discovery and self-knowledge that my astrology practice has given me.", price: 90, user: nadine)

file = URI.open("https://images.unsplash.com/photo-1525072124541-6237cc05f4f7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1111&q=80")
sally = User.create(email: "sally.brompton@gmail.com", password: "lkjlkj678", first_name: "Sally", last_name: "Brompton", birth_date: "1971-10-25", birth_time: "2000-01-01 10:10:47", birth_place: "Washington")
sally.photo.attach(io: file, filename: 'astrologist.png', content_type: 'image/png')
astro_sally = Astrologist.create(experience: "I am a professional astrologer and writer. I trained and worked with the world-renowned astrologer Patric Walker for many years until his death in 1995 when I succeeded him as the astrologer for: The Mail on Sunday (UK), The New York Post, TV Guide (USA), The Globe and Mail (Canada)", price: 100, user: sally)

file = URI.open("https://images.squarespace-cdn.com/content/v1/569d95ae5dc6dec5871acd81/1525462916375-H9214MQ4Q5QYR9EB110Y/ke17ZwdGBToddI8pDm48kJKo3YTR7zgUvInmXMbZ6zZ7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0geeCvn1f36QDdcifB7yxGjTk-SMFplgtEhJ5kBshkhu5q5viBDDnY2i_eu2ZnquSA/IMG_0630.JPG")
aliza = User.create(email: "aliza.kelly@gmail.com", password: "lkjlkj678", first_name: "Aliza", last_name: "Kelly", birth_date: "1985-04-25", birth_time: "2000-01-01 15:10:47", birth_place: "San Diego")
aliza.photo.attach(io: file, filename: 'astrologist.png', content_type: 'image/png')
astro_aliza = Astrologist.create(experience: "As the resident astrologer of Cosmopolitan Magazine, my work appears in digital, print, and video. In addition to my monthly digital horoscopes, my cosmic advice column — Ask Astrolobestie — is published each month in Cosmopolitan’s print magazine. I also have contributed to numerous publications including Allure, Girlboss, BuzzFeed, Cheddar, Sanctuary, among many others.", price: 95, user: aliza)

file = URI.open("https://mysolluna.com/wp-content/uploads/2019/02/Susan-pix-white-blouse.jpeg")
susan = User.create(email: "susan.miller@gmail.com", password: "lkjlkj678", first_name: "Susan", last_name: "Miller", birth_date: "1975-03-15", birth_time: "2000-01-01 12:10:47", birth_place: "Boston")
susan.photo.attach(io: file, filename: 'astrologist.png', content_type: 'image/png')
astro_susan = Astrologist.create(experience: "Best-selling book author, web publisher, and businesswoman, my achievements and contributions to the field of astrology have made myself an authority in my field. From Wall Street brokers to the models on fashion catwalks of Paris, Milan, and Tokyo; from readers in cafés in New York, Beijing, and Sao Paulo, to those discussing her words in New Delhi and Istanbul, people everywhere turn to me to advise, teach, lecture, and lead them toward success in both their personal life and business endeavors.", price: 120, user: susan)

file = URI.open("https://bloximages.newyork1.vip.townnews.com/journalnow.com/content/tncms/assets/v3/editorial/8/3c/83cdbc53-35a4-5a15-a074-3e17255725ad/5d0c4cac5d85b.image.jpg")
ross = User.create(email: "ross.clarck@gmail.com", password: "lkjlkj678", first_name: "Ross", last_name: "Clark", birth_date: "1975-04-15", birth_time: "2000-01-01 12:10:47", birth_place: "Washington")
ross.photo.attach(io: file, filename: 'astrologist.png', content_type: 'image/png')
astro_ross = Astrologist.create(experience: "Ross Clark is the CEO and Co-Founder of Sanctuary, an innovative venture-backed start-up focusing on astrology and other mystical products and services. Ross has spent his career at the cutting edge of digital media, leading business development and strategy for the boldest names in the industry: NBCUniversal, Hearst, Snap and Condé Nast. In this span, he has brokered industry-first partnerships between established and emerging players. Astrology and mystical services are misunderstood corners of wellness that has yet to be holistically digitalized and communicated to the mainstream public. With his keen understanding of what type of content and services draws views and engagement, Ross is reimaging the category for a mobile-first UX and building a new, dynamic component of the sharing economy. ", price: 140, user: ross)



