require 'json'
require 'open-uri'

puts "Resetting the database..."

Chatroom.destroy_all
Community.destroy_all
Game.destroy_all
Membership.destroy_all
Message.destroy_all
Participant.destroy_all
User.destroy_all
Venue.destroy_all

puts "Database resetted!"

puts "Generating users..."


user1 = User.create!(
  email: "user1@gmail.com",
  password: 'password123',
  password_confirmation: 'password123',
  first_name: "Roger",
  last_name: "Federer",
  username: "RogTheDestroyer",
  gender: "Male",
  bio: "Passionate tennis legend, Roger Federer here! 🎾 20 Grand Slams, ambassador for UNICEF, coffee enthusiast ☕️, family man, and always striving for greatness on and off the court. 🏆 #TennisMaestro"
)

user1_url = "https://hips.hearstapps.com/hmg-prod/images/gettyimages-1322028686.jpg"
user1_file = URI.open(user1_url)
user1.photo.attach(io: user1_file, filename: 'user1_img.jpeg', content_type: 'image/png')
user1.save!


user2 = User.create!(
  email: "user2@gmail.com",
  password: 'password123',
  password_confirmation: 'password123',
  first_name: "Novak",
  last_name: "Djokovic",
  username: "Djokobitch",
  gender: "Male",
  bio: "Hey, I'm Novak Djokovic! 🎾 Passionate about smashing aces, lover of padel, and always up for a good match. Proud owner of a golden tennis racket! 🏅 #ServeAndVolley"
)

user2_url = "https://static.standard.co.uk/2023/07/12/12/AFP_33NQ8UY.jpg?width=1200&height=1200&fit=crop"
user2_file = URI.open(user2_url)
user2.photo.attach(io: user2_file, filename: 'user2_img.jpeg', content_type: 'image/png')
user2.save!

user3 = User.create!(
  email: "user3@gmail.com",
  password: 'password123',
  password_confirmation: 'password123',
  first_name: "Serena",
  last_name: "Netqueen",
  username: "Serve&Slay",
  gender: "Female",
  bio: "Serena Netqueen here! 👑 Queen of the court, lover of powerful serves and smashing winners. Outside the court, I enjoy padel and the occasional squash match. Let's volley together! 🏓 #CourtRoyalty"
)

user3_url = "https://media.allure.com/photos/63222c2f9650fe336baa57eb/1:1/w_354%2Cc_limit/Serena%2520Williams%2520knee%2520length%2520ponytail.jpg"
user3_file = URI.open(user3_url)
user3.photo.attach(io: user3_file, filename: 'user3_img.jpeg', content_type: 'image/png')
user3.save!


user4 = User.create!(
  email: "user4@gmail.com",
  password: 'password123',
  password_confirmation: 'password123',
  first_name: "Rafael",
  last_name: "Smashdal",
  username: "RafaRacketKing",
  gender: "Male",
  bio: "Hola, I'm Rafael Smashdal! 🎾 King of the clay court, padel enthusiast, and master of the forehand. When I'm not on the court, you can find me perfecting my squash game. Vamos! 💪 #ClayMaster"
)


user4_url = "https://lh3.googleusercontent.com/0zBp8Xvu-qgbNzvm6o9K-D7eJ3ndGxhnJuP5MyRakwr4zViygq2fOrvZJuD0Q8Fp3bRsekJIZ-9O3fqIe4xTIEuoJryYhYbR5w"
user4_file = URI.open(user4_url)
user4.photo.attach(io: user4_file, filename: 'user4_img.jpeg', content_type: 'image/png')
user4.save!

user5 = User.create!(
  email: "user5@gmail.com",
  password: 'password123',
  password_confirmation: 'password123',
  first_name: "Stella",
  last_name: "Dropshot",
  username: "StellaSquashPro",
  gender: "Female",
  bio: "Hi, I'm Stella Dropshot! 🎾 Squash pro with a passion for tricky shots and deceptive drop shots. Padel lover on weekends, always up for a challenging match. Let's rally! 🏸 #SquashWizard"
)


user5_url = "https://i0.wp.com/padelathletes.com/wp-content/uploads/2023/01/marta-marrero_estrella-damm-madrid-master-final-2021__dsc8103-copia-1900x1068-1.jpg?resize=1024%2C576&ssl=1"
user5_file = URI.open(user5_url)
user5.photo.attach(io: user5_file, filename: 'user5_img.jpeg', content_type: 'image/png')
user5.save!

user6 = User.create!(
  email: "user6@gmail.com",
  password: 'password123',
  password_confirmation: 'password123',
  first_name: "Andy",
  last_name: "SliceMurray",
  username: "MurraySliceMaster",
  gender: "Male",
  bio: "Hey, it's Andy SliceMurray! 🎾 Master of the slice, padel aficionado, and squash strategist. When not on the court, you'll find me perfecting my backhand slice. Join me for a match! 🏓 #SliceAndDice"
)

user6_url = "https://www.thetimes.co.uk/imageserver/image/%2Fmethode%2Ftimes%2Fprod%2Fweb%2Fbin%2Fa4202fec-cb60-4129-8c6c-13fd80378a22.jpg?crop=4992%2C3330%2C0%2C929"
user6_file = URI.open(user6_url)
user6.photo.attach(io: user6_file, filename: 'user6_img.jpeg', content_type: 'image/png')
user6.save!


user7 = User.create!(
  email: "user7@gmail.com",
  password: 'password123',
  password_confirmation: 'password123',
  first_name: "Venus",
  last_name: "Rallyqueen",
  username: "VenusRacketRoyalty",
  gender: "Female",
  bio: "Greetings, I'm Venus Rallyqueen! 👑 Racket royalty, tennis aficionado, and padel princess. Known for powerful serves and precise shots. Let's conquer the court together! 🎾 #RallyRoyalty"
)

user7_url = "https://static.independent.co.uk/2023/02/08/11/newFile-3.jpg"
user7_file = URI.open(user7_url)
user7.photo.attach(io: user7_file, filename: 'user7_img.jpeg', content_type: 'image/png')
user7.save!

user8 = User.create!(
  email: "user8@gmail.com",
  password: 'password123',
  password_confirmation: 'password123',
  first_name: "Bjorn",
  last_name: "Smashborg",
  username: "SmashborgBjorn",
  gender: "Male",
  bio: "Hej, I'm Bjorn Smashborg! 🎾 Padel warrior, squash strategist, and lover of the perfect smash. On a mission to dominate the court. Join me for a match or two! 💥 #SmashMaster"
)

user8_url = "https://upload.wikimedia.org/wikipedia/commons/d/d5/Bj%C3%B6rn_Borg_%281987%29_color.jpg"
user8_file = URI.open(user8_url)
user8.photo.attach(io: user8_file, filename: 'user8_img.jpeg', content_type: 'image/png')
user8.save!


puts "Succesfully generated #{User.count} users"


puts "Generating venues..."


venue1 = Venue.create!(
  name: "Green Point Tennis Club",
  address: "Urban Park, Bill Peters Dr, Green Point, Cape Town, 8005",
  description: "Green Point Tennis Club is ideally situated in the Green Point Urban Park on Cape Town's western seaboard, 10 minutes from the CBD and close to all facilities.",
  has_tennis: true,
  has_squash: true,
  has_padel: true
)

venue1_url = "https://cdn2.wanderlust.co.uk/media/1063/img_141216_15030409_w19cs.jpg?anchor=center&mode=crop&width=1200&height=0&rnd=132049994090000000"
venue1_file = URI.open(venue1_url)
venue1.photo.attach(io: venue1_file, filename: 'venue1_img.jpeg', content_type: 'image/png')
venue1.save!


venue2 = Venue.create!(
  name: "Bob's Tennis Center",
  address: "12 Beach Road, Cape Town",
  description: "Welcome to Bob's Tennis Center, where sportsmanship and skill come together. Join us for a fantastic tennis experience!",
  has_tennis: true,
  has_squash: false,
  has_padel: false
)

venue2_url = "https://video-images.vice.com/_uncategorized/1537288324658-Coolest-Tennis-Courts-1.jpeg"
venue2_file = URI.open(venue2_url)
venue2.photo.attach(io: venue2_file, filename: 'venue2_img.jpeg', content_type: 'image/png')
venue2.save!


venue3 = Venue.create!(
  name: "Racket Haven",
  address: "4 Trill Road, Cape Town",
  description: "Racket Haven, the ultimate destination for racket sports enthusiasts. Come play and enjoy a world-class experience!",
  has_tennis: true,
  has_squash: false,
  has_padel: false
)

venue3_url = "https://media.cntraveler.com/photos/5654a2ba5e7aeb7a6e2176a2/16:9/w_1280,c_limit/dubai-underwater-tennis-court-cr-courtesy.jpg"
venue3_file = URI.open(venue3_url)
venue3.photo.attach(io: venue3_file, filename: 'venue3_img.jpeg', content_type: 'image/png')
venue3.save!


venue4 = Venue.create!(
  name: "Ace Palace",
  address: "116 Kloof Street, Cape Town",
  description: "Ace Palace, where every serve is an ace! Join us for thrilling tennis matches and create memorable moments on the court.",
  has_tennis: true,
  has_squash: false,
  has_padel: true
)

venue4_url = "https://sonomuro.b-cdn.net/app/uploads/2023/04/padel_field.jpeg"
venue4_file = URI.open(venue4_url)
venue4.photo.attach(io: venue4_file, filename: 'venue4_img.jpeg', content_type: 'image/png')
venue4.save!


venue5 = Venue.create!(
  name: "Squash Kingdom",
  address: "34 Wale Street, Cape Town",
  description: "Welcome to Squash Kingdom, your royal destination for squash excellence. Experience the thrill of squash in a regal setting!",
  has_tennis: true,
  has_squash: true,
  has_padel: false
)

venue5_url = "https://padelathletes.com/wp-content/uploads/2023/08/Padel-court6.jpg"
venue5_file = URI.open(venue5_url)
venue5.photo.attach(io: venue5_file, filename: 'venue5_img.jpeg', content_type: 'image/png')
venue5.save!


venue6 = Venue.create!(
  name: "Sport Haven",
  address: "3 Park Road, Cape Town",
  description: "Sport Haven, where sports enthusiasts gather for thrilling matches and competitions.",
  has_tennis: true,
  has_squash: true,
  has_padel: true
)

venue6_url = "https://recsports.usc.edu/wp-content/uploads/sites/4/2023/04/LCPracTen-12-scaled.jpg"
venue6_file = URI.open(venue6_url)
venue6.photo.attach(io: venue6_file, filename: 'venue6_img.jpeg', content_type: 'image/png')
venue6.save!

venue7 = Venue.create!(
  name: "Dynamic Courts",
  address: "1 Kloof Street, Cape Town",
  description: "Dynamic Courts, the place for dynamic and energetic sports activities. Join us for an adrenaline-pumping experience!",
  has_tennis: true,
  has_squash: false,
  has_padel: false
)

venue7_url = "https://video-images.vice.com/_uncategorized/1537288581962-Coolest-Tennis-Courts-2.jpeg"
venue7_file = URI.open(venue7_url)
venue7.photo.attach(io: venue7_file, filename: 'venue7_img.jpeg', content_type: 'image/png')
venue7.save!

venue8 = Venue.create!(
  name: "Pro Racket Club",
  address: "42 Strand Street, Cape Town",
  description: "Pro Racket Club, where professionals and amateurs come together for intense racket sports competitions.",
  has_tennis: true,
  has_squash: true,
  has_padel: true
)

venue8_url = "https://cdn2.wanderlust.co.uk/media/1046/burj-al-arab-tennis-court.jpg?anchor=center&mode=crop&width=650&height=0&rnd=132049817620000000"
venue8_file = URI.open(venue8_url)
venue8.photo.attach(io: venue8_file, filename: 'venue8_img.jpeg', content_type: 'image/png')
venue8.save!

venue9 = Venue.create!(
  name: "City Sports Arena",
  address: "3 Parade Street, Cape Town",
  description: "City Sports Arena, the heart of sports in the city. Experience the thrill of sportsmanship and camaraderie.",
  has_tennis: true,
  has_squash: false,
  has_padel: false
)

venue9_url = "https://www.telegraph.co.uk/content/dam/travel/2021/06/30/TELEMMGLPICT000262881278_trans_NvBQzQNjv4BqOHNs0Y5vwBZmXiYbjSVrpD04m7p4ath3-OOr0L9WCk0.jpeg?imwidth=680"
venue9_file = URI.open(venue9_url)
venue9.photo.attach(io: venue9_file, filename: 'venue9_img.jpeg', content_type: 'image/png')
venue9.save!

venue10 = Venue.create!(
  name: "Racket Oasis",
  address: "1 Ludlow Road, Cape Town",
  description: "Racket Oasis, an oasis for racket sports enthusiasts. Join us for a refreshing experience on the courts.",
  has_tennis: true,
  has_squash: false,
  has_padel: true
)

venue10_url = "https://awol.com.au/wp-content/uploads/2021/07/awol-header-1.jpg"
venue10_file = URI.open(venue10_url)
venue10.photo.attach(io: venue10_file, filename: 'venue10_img.jpeg', content_type: 'image/png')
venue10.save!

venue11 = Venue.create!(
  name: "Elite Sports Pavilion",
  address: "1 Avenue Alexandra, Cape Town",
  description: "Elite Sports Pavilion, where elite athletes and sports lovers gather for top-notch competitions.",
  has_tennis: true,
  has_squash: false,
  has_padel: true
)

venue11_url = "https://i0.wp.com/tennislifemag.com/wp-content/uploads/2016/07/Hacienda-De-La-Paz-California.jpg?resize=1170%2C780&ssl=1"
venue11_file = URI.open(venue11_url)
venue11.photo.attach(io: venue11_file, filename: 'venue11_img.jpeg', content_type: 'image/png')
venue11.save!

venue12 = Venue.create!(
  name: "Racket Revolution",
  address: "1 Molteno Road, Cape Town",
  description: "Racket Revolution, sparking a revolution in racket sports. Join us for innovative and exciting matches.",
  has_tennis: true,
  has_squash: true,
  has_padel: false
)

venue12_url = "https://i.insider.com/55a80020ecad046c434bca04?width=1000&format=jpeg&auto=webp"
venue12_file = URI.open(venue12_url)
venue12.photo.attach(io: venue12_file, filename: 'venue12_img.jpeg', content_type: 'image/png')
venue12.save!

venue13 = Venue.create!(
  name: "Harbor Sports Hub",
  address: "1 Lower Main Road, Cape Town",
  description: "Harbor Sports Hub, the hub of sports activities near the harbor. Join us for a sea breeze and thrilling matches.",
  has_tennis: true,
  has_squash: false,
  has_padel: false
)

venue13_url = "https://nearfarmag.com/wp-content/uploads/2023/07/oneonly-royal-mirage-tennis-courts.jpg"
venue13_file = URI.open(venue13_url)
venue13.photo.attach(io: venue13_file, filename: 'venue13_img.jpeg', content_type: 'image/png')
venue13.save!

puts "Succesfully generated #{Venue.count} venues"


puts "Generating games..."




Game.create!(
  name: "Epic Tennis Showdown",
  description: "Join us for an epic tennis showdown at Green Point Tennis Club! Fast serves, intense rallies, and a lot of fun.",
  visibility: "Public",
  capacity: 4,
  venue: venue1,
  sport: "Tennis",
  start_time: Time.now.utc.tomorrow.beginning_of_day + 12.hours,
  end_time: Time.now.utc.tomorrow.beginning_of_day + 14.hours
).participants.create!([{ user: user1, is_creator: true }, { user: user2 }])


Game.create!(
  name: "Bob's Center Open",
  description: "Welcome to Bob's Tennis Center Open! A friendly tennis competition with skilled players and a great atmosphere.",
  visibility: "Public",
  capacity: 4,
  venue: venue2,
  sport: "Tennis",
  start_time: Time.now.utc.tomorrow.beginning_of_day + 12.hours,
  end_time: Time.now.utc.tomorrow.beginning_of_day + 14.hours
).participants.create!([{ user: user3, is_creator: true }, { user: user4 }])


Game.create!(
  name: "Racket Haven Squash Challenge",
  description: "Experience the Racket Haven Squash Challenge! Tight spaces, lightning-fast shots, and thrilling squash matches await you.",
  visibility: "Public",
  capacity: 4,
  venue: venue5,
  sport: "Squash",
  start_time: Time.now.utc.tomorrow.beginning_of_day + 12.hours,
  end_time: Time.now.utc.tomorrow.beginning_of_day + 14.hours
).participants.create!([{ user: user5, is_creator: true }, { user: user6 }])


Game.create!(
  name: "Ace Palace Padel Tournament",
  description: "Ace Palace invites you to the Padel Tournament! Smash the ball, strategic plays, and exciting padel matches.",
  visibility: "Public",
  capacity: 4,
  venue: venue4,
  sport: "Padel",
  start_time: Time.now.utc.tomorrow.beginning_of_day + 12.hours,
  end_time: Time.now.utc.tomorrow.beginning_of_day + 14.hours
).participants.create!([{ user: user7, is_creator: true }, { user: user8 }])


Game.create!(
  name: "Tennis Thriller",
  description: "Join us for a tennis thriller! Witness a match filled with powerful serves and strategic volleys.",
  visibility: "Public",
  capacity: 4,
  venue: venue1,
  sport: "Tennis",
  start_time: Time.now.utc + 12.hours,
  end_time: Time.now.utc + 14.hours
).participants.create!([{ user: user1, is_creator: true }, { user: user2 }])

Game.create!(
  name: "Friendly Padel Tournament",
  description: "Welcome to a friendly padel tournament! Enjoy a fun-filled game of smashing the ball and strategic plays.",
  visibility: "Public",
  capacity: 4,
  venue: venue4,
  sport: "Padel",
  start_time: Time.now.utc + 14.hours,
  end_time: Time.now.utc + 16.hours
).participants.create!([{ user: user3, is_creator: true }, { user: user4 }])


Game.create!(
  name: "Squash Rivalry",
  description: "Witness a squash rivalry! Engage in lightning-fast shots and thrilling rallies.",
  visibility: "Public",
  capacity: 4,
  venue: venue5,
  sport: "Squash",
  start_time: Time.now.utc + 16.hours,
  end_time: Time.now.utc + 18.hours
).participants.create!([{ user: user5, is_creator: true }, { user: user6 }])


Game.create!(
  name: "Ace Tennis Challenge",
  description: "Ace Palace presents the ultimate tennis challenge! Showcase of skills in a match filled with aces and powerful rallies.",
  visibility: "Public",
  capacity: 4,
  venue: venue8,
  sport: "Tennis",
  start_time: Time.now.utc + 18.hours,
  end_time: Time.now.utc + 20.hours
).participants.create!([{ user: user7, is_creator: true }, { user: user8 }])

Game.create!(
  name: "Padel Extravaganza",
  description: "Join us for a padel extravaganza! Promise of an exciting match with smashing rallies and strategic plays.",
  visibility: "Public",
  capacity: 4,
  venue: venue10,
  sport: "Padel",
  start_time: Time.now.utc + 20.hours,
  end_time: Time.now.utc + 22.hours
).participants.create!([{ user: user1, is_creator: true }, { user: user2 }])

Game.create!(
  name: "Dynamic Squash Showdown",
  description: "Dynamic Courts hosts a squash showdown! Competition in a match full of energy, lightning-fast shots, and precise plays.",
  visibility: "Public",
  capacity: 4,
  venue: venue6,
  sport: "Squash",
  start_time: Time.now.utc + 22.hours,
  end_time: Time.now.utc + 1.day
).participants.create!([{ user: user3, is_creator: true }, { user: user4 }])


Game.create!(
  name: "Rally Masters Tennis",
  description: "Rally Masters Tennis! Showcase of tennis mastery in a match filled with powerful serves and precise shots.",
  visibility: "Public",
  capacity: 4,
  venue: venue9,
  sport: "Tennis",
  start_time: Time.now.utc + 1.day,
  end_time: Time.now.utc + 1.day + 2.hours
).participants.create!([{ user: user5, is_creator: true }, { user: user6 }])


Game.create!(
  name: "Padel Championship",
  description: "Padel Championship! Thrilling match of strategic padel plays and intense rallies.",
  visibility: "Public",
  capacity: 4,
  venue: venue11,
  sport: "Padel",
  start_time: Time.now.utc + 1.day + 2.hours,
  end_time: Time.now.utc + 1.day + 4.hours
).participants.create!([{ user: user7, is_creator: true }, { user: user8 }])


Game.create!(
  name: "Squash Mastery",
  description: "Experience squash mastery! Showcase of skills in a match filled with tricky shots and deceptive plays.",
  visibility: "Public",
  capacity: 4,
  venue: venue5,
  sport: "Squash",
  start_time: Time.now.utc + 1.day + 4.hours,
  end_time: Time.now.utc + 1.day + 6.hours
).participants.create!([{ user: user1, is_creator: true }, { user: user2 }])


Game.create!(
  name: "Tennis Showtime",
  description: "It's tennis showtime! Promise of an entertaining match with skillful plays and friendly competition.",
  visibility: "Public",
  capacity: 4,
  venue: venue2,
  sport: "Tennis",
  start_time: Time.now.utc + 1.day + 6.hours,
  end_time: Time.now.utc + 1.day + 8.hours
).participants.create!([{ user: user3, is_creator: true }, { user: user4 }])


Game.create!(
  name: "Padel Prodigy",
  description: "Witness a padel prodigy match! Showcase of expertise in a game filled with skillful plays and strategic moves.",
  visibility: "Public",
  capacity: 4,
  venue: venue6,
  sport: "Padel",
  start_time: Time.now.utc + 1.day + 8.hours,
  end_time: Time.now.utc + 1.day + 10.hours
).participants.create!([{ user: user5, is_creator: true }, { user: user6 }])


Game.create!(
  name: "Squash Challenge Extravaganza",
  description: "Join us for a squash challenge extravaganza! Competition in a match filled with intensity and squash mastery.",
  visibility: "Public",
  capacity: 4,
  venue: venue5,
  sport: "Squash",
  start_time: Time.now.utc + 1.day + 10.hours,
  end_time: Time.now.utc + 2.days
).participants.create!([{ user: user7, is_creator: true }, { user: user8 }])


Game.create!(
  name: "Ace Tennis Showdown",
  description: "Join us for an ace tennis showdown! Promise of a match filled with powerful serves, intense rallies, and a lot of fun.",
  visibility: "Public",
  capacity: 4,
  venue: venue4,
  sport: "Tennis",
  start_time: Time.now.utc + 2.days + 12.hours,
  end_time: Time.now.utc + 2.days + 14.hours
).participants.create!([{ user: user1, is_creator: true }, { user: user2 }])


Game.create!(
  name: "Bob's Center Open",
  description: "Welcome to Bob's Tennis Center Open! A friendly tennis competition with skilled players and a great atmosphere.",
  visibility: "Public",
  capacity: 4,
  venue: venue2,
  sport: "Tennis",
  start_time: Time.now.utc + 2.days + 12.hours,
  end_time: Time.now.utc + 2.days + 14.hours
).participants.create!([{ user: user3, is_creator: true }, { user: user4 }])


Game.create!(
  name: "Racket Haven Squash Challenge",
  description: "Experience the Racket Haven Squash Challenge! Tight spaces, lightning-fast shots, and thrilling squash matches await you.",
  visibility: "Public",
  capacity: 4,
  venue: venue5,
  sport: "Squash",
  start_time: Time.now.utc + 2.days + 12.hours,
  end_time: Time.now.utc + 2.days + 14.hours
).participants.create!([{ user: user5, is_creator: true }, { user: user6 }])


Game.create!(
  name: "Ace Palace Padel Tournament",
  description: "Ace Palace invites you to the Padel Tournament! Smash the ball, strategic plays, and exciting padel matches.",
  visibility: "Public",
  capacity: 4,
  venue: venue8,
  sport: "Padel",
  start_time: Time.now.utc + 2.days + 12.hours,
  end_time: Time.now.utc + 2.days + 14.hours
).participants.create!([{ user: user7, is_creator: true }, { user: user8 }])


Game.create!(
  name: "Rapid Tennis Showdown",
  description: "Experience a rapid tennis showdown! Showcase of agility and precision in a fast-paced match.",
  visibility: "Public",
  capacity: 4,
  venue: venue8,
  sport: "Tennis",
  start_time: Time.now.utc + 2.days + 18.hours,
  end_time: Time.now.utc + 2.days + 20.hours
).participants.create!([{ user: user7, is_creator: true }, { user: user8 }])


Game.create!(
  name: "Dynamic Padel Challenge",
  description: "Dive into a dynamic padel challenge! Promise of an exhilarating match filled with strategic plays.",
  visibility: "Public",
  capacity: 4,
  venue: venue10,
  sport: "Padel",
  start_time: Time.now.utc + 2.days + 20.hours,
  end_time: Time.now.utc + 2.days + 22.hours
).participants.create!([{ user: user1, is_creator: true }, { user: user2 }])


Game.create!(
  name: "Squash Showdown Spectacle",
  description: "Get ready for a squash showdown spectacle! Competition for victory in a high-energy match.",
  visibility: "Public",
  capacity: 4,
  venue: venue12,
  sport: "Squash",
  start_time: Time.now.utc + 2.days + 22.hours,
  end_time: Time.now.utc + 3.days
).participants.create!([{ user: user3, is_creator: true }, { user: user4 }])

puts "Successfully generated #{Game.count} games"
