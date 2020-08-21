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

Review.destroy_all
Booking.destroy_all
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

file = URI.open("https://images.unsplash.com/photo-1587464196619-4bb33b420536?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80")
bruno_test = User.new(email: "bruno@astromeet.com", password: "123456", first_name: "Bruno", last_name: "Bucar", birth_date: "1998-02-10", birth_time: "1998-02-10 15:34:21", birth_place: "New-York")
bruno_test.photo.attach(io: file, filename: 'astrologist.png', content_type: 'image/png')
bruno_test.save

file = URI.open("https://images.unsplash.com/photo-1597605706583-c1d11586d209?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80")
toa_test = User.new(email: "toa@astromeet.com", password: "123456", first_name: "Toa", last_name: "Heftiba", birth_date: "1990-03-14", birth_time: "1990-03-14 07:10:06", birth_place: "Tokyo")
toa_test.photo.attach(io: file, filename: 'astrologist.png', content_type: 'image/png')
toa_test.save

file = URI.open("https://images.unsplash.com/photo-1597750955232-b6040c843cf4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
andreea_test = User.new(email: "andreea@astromeet.com", password: "123456", first_name: "Andreea", last_name: "Pop", birth_date: "1992-05-20", birth_time: "1992-05-20 11:15:02", birth_place: "Louisville")
andreea_test.photo.attach(io: file, filename: 'astrologist.png', content_type: 'image/png')
andreea_test.save

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
astro_nadine = Astrologist.create(experience: "I am an Astrologer, using my background as a digital designer to make astrology accessible, relatable, and beautiful. Through my platform, I work to share the tools of  self-discovery and self-knowledge that my astrology practice has given me.", price: 90, user: nadine, speciality: "readings")

file = URI.open("https://images.unsplash.com/photo-1525072124541-6237cc05f4f7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1111&q=80")
sally = User.create(email: "sally.brompton@gmail.com", password: "lkjlkj678", first_name: "Sally", last_name: "Brompton", birth_date: "1971-10-25", birth_time: "2000-01-01 10:10:47", birth_place: "Washington")
sally.photo.attach(io: file, filename: 'astrologist.png', content_type: 'image/png')
astro_sally = Astrologist.create(experience: "I am a professional astrologer and writer. I trained and worked with the world-renowned astrologer Patric Walker for many years until his death in 1995 when I succeeded him as the astrologer for: The Mail on Sunday (UK), The New York Post, TV Guide (USA), The Globe and Mail (Canada)", price: 100, user: sally)

file = URI.open("https://images.squarespace-cdn.com/content/v1/569d95ae5dc6dec5871acd81/1525462916375-H9214MQ4Q5QYR9EB110Y/ke17ZwdGBToddI8pDm48kJKo3YTR7zgUvInmXMbZ6zZ7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0geeCvn1f36QDdcifB7yxGjTk-SMFplgtEhJ5kBshkhu5q5viBDDnY2i_eu2ZnquSA/IMG_0630.JPG")
aliza = User.create(email: "aliza.kelly@gmail.com", password: "lkjlkj678", first_name: "Aliza", last_name: "Kelly", birth_date: "1985-04-25", birth_time: "2000-01-01 15:10:47", birth_place: "San Diego")
aliza.photo.attach(io: file, filename: 'astrologist.png', content_type: 'image/png')
astro_aliza = Astrologist.create(experience: "As the resident astrologer of Cosmopolitan Magazine, my work appears in digital, print, and video. In addition to my monthly digital horoscopes, my cosmic advice column — Ask Astrolobestie — is published each month in Cosmopolitan’s print magazine. I also have contributed to numerous publications including Allure, Girlboss, BuzzFeed, Cheddar, Sanctuary, among many others.", price: 95, user: aliza, speciality: "horoscope")

file = URI.open("https://mysolluna.com/wp-content/uploads/2019/02/Susan-pix-white-blouse.jpeg")
susan = User.create(email: "susan.miller@gmail.com", password: "lkjlkj678", first_name: "Susan", last_name: "Miller", birth_date: "1975-03-15", birth_time: "2000-01-01 12:10:47", birth_place: "Boston")
susan.photo.attach(io: file, filename: 'astrologist.png', content_type: 'image/png')
astro_susan = Astrologist.create(experience: "Best-selling book author, web publisher, and businesswoman, my achievements and contributions to the field of astrology have made myself an authority in my field. From Wall Street brokers to the models on fashion catwalks of Paris, Milan, and Tokyo; from readers in cafés in New York, Beijing, and Sao Paulo, to those discussing her words in New Delhi and Istanbul, people everywhere turn to me to advise, teach, lecture, and lead them toward success in both their personal life and business endeavors.", price: 120, user: susan, speciality: "coaching")

file = URI.open("https://bloximages.newyork1.vip.townnews.com/journalnow.com/content/tncms/assets/v3/editorial/8/3c/83cdbc53-35a4-5a15-a074-3e17255725ad/5d0c4cac5d85b.image.jpg")
ross = User.create(email: "ross.clarck@gmail.com", password: "lkjlkj678", first_name: "Ross", last_name: "Clark", birth_date: "1975-04-15", birth_time: "2000-01-01 12:10:47", birth_place: "Washington")
ross.photo.attach(io: file, filename: 'astrologist.png', content_type: 'image/png')
astro_ross = Astrologist.create(experience: "Ross Clark is the CEO and Co-Founder of Sanctuary, an innovative venture-backed start-up focusing on astrology and other mystical products and services. Ross has spent his career at the cutting edge of digital media, leading business development and strategy for the boldest names in the industry: NBCUniversal, Hearst, Snap and Condé Nast. In this span, he has brokered industry-first partnerships between established and emerging players. Astrology and mystical services are misunderstood corners of wellness that has yet to be holistically digitalized and communicated to the mainstream public. With his keen understanding of what type of content and services draws views and engagement, Ross is reimaging the category for a mobile-first UX and building a new, dynamic component of the sharing economy. ", price: 140, user: ross, speciality:"sinastry")

file = URI.open("https://femalefoundersfund.com/wp-content/uploads/2020/02/Banu-Guler-2.jpg")
banu = User.create(email: "banuguler@gmail.com", password: "lkjlkj678", first_name: "Banu", last_name: "Guler", birth_date: "1987-10-23", birth_time: "1987-10-23 07:10:35", birth_place: "Austin")
banu.photo.attach(io: file, filename: 'astrologist.png', content_type: 'image/png')
astro_banu = Astrologist.create(experience: "A few years ago, a friend had a baby. I designed and printed a book-length reading of the baby’s chart for the baby shower. It was black and goth, sort of meant to alienate people. But everyone loved it. That was the first moment that I realized astrology might not be something only my weirdo punk friends were into.", price: 120, user: banu, speciality: "coaching")

puts "Creating Booking seeds..."

booking_test = Booking.create(astrologist: astro_nadine, user: mathilda_test, date: "2020-08-17", time: "2000-01-01 12:30:00")
booking_test2 = Booking.create(astrologist: astro_ross, user: quentin_test, date: "2020-08-17", time: "2000-01-01 12:30:00")
booking_test3 = Booking.create(astrologist: astro_susan, user: mathilda_test, date: "2020-08-17", time: "2000-01-01 12:30:00")
booking_test4 = Booking.create(astrologist: astro_banu, user: toa_test, date: "2020-09-04", time: "2020-09-04 18:00:00")
booking_test5 = Booking.create(astrologist: astro_banu, user: bruno_test, date: "2020-10-13", time: "2020-10-13 15:30:00")
booking_test6 = Booking.create(astrologist: astro_ross, user: bruno_test, date: "2020-08-15", time: "2020-08-15 18:00:00")
booking_test7 = Booking.create(astrologist: astro_nadine, user: andreea_test, date: "2020-05-10", time: "2020-05-10 08:00:00")
booking_test8 = Booking.create(astrologist: astro_susan, user: toa_test, date: "2020-06-11", time: "2020-06-11 17:30:00")
booking_test9 = Booking.create(astrologist: astro_banu, user: andreea_test, date: "2020-07-31", time:"2020-07-31 18:00:00")

puts "Creating Review seeds..."

review_test = Review.create(rating: 4, booking: booking_test, comment: "Great session with Nadine 😁")
review_test = Review.create(rating: 4, booking: booking_test2, comment: "Amazing astrologist I highly recommend.🙏")
review_test = Review.create(rating: 5, booking: booking_test3, comment: "It was such a wonderful experience!✨")
review_test = Review.create(rating: 3, booking: booking_test2, comment: "A must do session!🙌🪐")
review_test = Review.create(rating: 5, booking: booking_test4, comment: "This hour was amazing in the compâny of Banu. She is a very enthousiastic person with insignthful advice. She helped me with my current relationship with which I was struggling for months.I highly recommend her!")
review_test = Review.create(rating: 4, booking: booking_test5, comment: "I am definitely recommending Banu to others and plan on giving myself a reading every year for my birthday!")
review_test = Review.create(rating: 5, booking: booking_test6, comment: "I've found myself continuing to use his insight over the years, and came back to update my review to 5 stars.")
review_test = Review.create(rating: 2, booking: booking_test7, comment: "Nadine's readings are warm and very accessible. She works in person in the greater San Francisco Bay Area and via videoconferencing and screenshare with English-speaking clients around the world. She was very late for our meeting thought that is why I gave her a 2 stars rating...")
review_test = Review.create(rating: 4, booking: booking_test8, comment: "This reading was like a cheat sheet into my personality and how I approach the world. Susan gave definition to foggy areas of my life where I needed more direction, and outlined my strengths so that I may better apply them.")
review_test = Review.create(rating: 5, booking: booking_test9, comment: "I had an incredibly revealing reading with Banu on zoom, she helped me understand my chart and gave clear and fulfilling guidance in career and love.  Recommended if you are feeling lost, frustrated, disappointed and need some honest guidance.")
