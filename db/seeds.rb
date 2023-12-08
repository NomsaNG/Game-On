require 'json'
require 'open-uri'

puts "Resetting the database..."

Chatroom.destroy_all
Participation.destroy_all
Game.destroy_all
Community.destroy_all
Membership.destroy_all
Message.destroy_all
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
  username: "Djokoooo",
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


puts "Generating communities..."

community1 = Community.create!(
  name: "Racket Titans",
  description: "A community for passionate racket sport enthusiasts. Join us for epic matches and discussions!",
  visibility: "Public"
)

community1_url = "https://scontent.fbru1-1.fna.fbcdn.net/v/t39.30808-6/300390241_593629509134826_4831983855745723648_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=783fdb&_nc_eui2=AeEDLCVHxWA9x6_ssu3pUY-Yp_jmlMbr5Xun-OaUxuvle9dDvJdy-Z_a7ddunxkKvrmryUbjsXj5hPPwkNQKkjec&_nc_ohc=fRk-23s_r1YAX8R4GbS&_nc_ht=scontent.fbru1-1.fna&oh=00_AfDlvj8EPMvqE7p1hPw9TjWazFJMkFicvHpCFAb5iaz4ZQ&oe=65739E21"
community1_file = URI.open(community1_url)
community1.photo.attach(io: community1_file, filename: 'community1_img.jpeg', content_type: 'image/png')
community1.save!

Membership.create!(user: user1, community: community1)
Membership.create!(user: user2, community: community1)
Membership.create!(user: user3, community: community1)
Membership.create!(user: user4, community: community1)
Membership.create!(user: user5, community: community1)
Membership.create!(user: user6, community: community1)
Membership.create!(user: user7, community: community1)
Membership.create!(user: user8, community: community1)


community2 = Community.create!(
  name: "Smash Masters",
  description: "A community for those who love powerful smashes and masterful plays on the court!",
  visibility: "Public",
)

community2_url = "https://cdn.24.co.za/files/Cms/General/d/3068/22bcc95c0a5e41e29839ef52a71592db.jpg"
community2_file = URI.open(community2_url)
community2.photo.attach(io: community2_file, filename: 'community2_img.jpeg', content_type: 'image/png')
community2.save!

Membership.create!(user: user1, community: community2)
Membership.create!(user: user2, community: community2)
Membership.create!(user: user3, community: community2)
Membership.create!(user: user4, community: community2)
Membership.create!(user: user5, community: community2)
Membership.create!(user: user6, community: community2)
Membership.create!(user: user7, community: community2)
Membership.create!(user: user8, community: community2)


community3 = Community.create!(
  name: "Racket Royalty",
  description: "A community for those who believe in the royal artistry of racket sports. Join us for regal matches!",
  visibility: "Private",
)

community3_url = "https://universe.byu.edu/wp-content/uploads/2019/11/tennis-team-1.jpeg"
community3_file = URI.open(community3_url)
community3.photo.attach(io: community3_file, filename: 'community3_img.jpeg', content_type: 'image/png')
community3.save!

Membership.create!(user: user1, community: community3)
Membership.create!(user: user2, community: community3)
Membership.create!(user: user3, community: community3)
Membership.create!(user: user4, community: community3)
Membership.create!(user: user5, community: community3)
Membership.create!(user: user6, community: community3)
Membership.create!(user: user7, community: community3)
Membership.create!(user: user8, community: community3)


community4 = Community.create!(
  name: "Ace Achievers",
  description: "A community for achievers who love acing the game. Join us for thrilling matches and achievements!",
  visibility: "Public",
)

community4_url = "https://hollandchristian.org/wp-content/uploads/2023/09/boys-varsity-tennis-team.jpg"
community4_file = URI.open(community4_url)
community4.photo.attach(io: community4_file, filename: 'community4_img.jpeg', content_type: 'image/png')
community4.save!

Membership.create!(user: user1, community: community4)
Membership.create!(user: user2, community: community4)
Membership.create!(user: user3, community: community4)
Membership.create!(user: user4, community: community4)
Membership.create!(user: user5, community: community4)
Membership.create!(user: user6, community: community4)
Membership.create!(user: user7, community: community4)
Membership.create!(user: user8, community: community4)


puts "Successfully generated #{Community.count} communities"


puts "Generating games..."

game1 = Game.create!(
  name: "Epic Tennis Showdown",
  description: "Join us for an epic tennis showdown at Green Point Tennis Club! Fast serves, intense rallies, and a lot of fun.",
  visibility: "Public",
  capacity: 4,
  venue: venue1,
  sport: "Tennis",
  game_date: Date.today,
  start_time: 6
)

game1.participations.create!([{ user: user1, is_creator: true }, { user: user2 }, { user: user5 }])

game2 = Game.create!(
  name: "Bob's Center Open",
  description: "Welcome to Bob's Tennis Center Open! A friendly tennis competition with skilled players and a great atmosphere.",
  visibility: "Public",
  capacity: 4,
  venue: venue2,
  sport: "Tennis",
  game_date: Date.today,
  start_time: 8
)

game2.participations.create!([{ user: user3, is_creator: true }])

game4 = Game.create!(
  name: "Squash Tournie",
  description: "Experience the Racket Haven Squash Challenge! Tight spaces, lightning-fast shots, and thrilling squash matches await you.",
  visibility: "Public",
  capacity: 4,
  venue: venue5,
  sport: "Squash",
  game_date: Date.today,
  start_time: 10
)

game4.participations.create!([{ user: user5, is_creator: true }, { user: user6 }])

game5 = Game.create!(
  name: "Padel Shmadel",
  description: "Ace Palace invites you to the Padel Tournament! Smash the ball, strategic plays, and exciting padel matches.",
  visibility: "Public",
  capacity: 4,
  venue: venue4,
  sport: "Padel",
  game_date: Date.today,
  start_time: 12
)

game5.participations.create!([{ user: user7, is_creator: true }, { user: user8 }, { user: user2 }])

game6 = Game.create!(
  name: "Tennis Thriller",
  description: "Join us for a tennis thriller! Witness a match filled with powerful serves and strategic volleys.",
  visibility: "Public",
  capacity: 4,
  venue: venue1,
  sport: "Tennis",
  game_date: Date.today,
  start_time: 14
)

game6.participations.create!([{ user: user1, is_creator: true }, { user: user2 }, { user: user6 }])

game7 = Game.create!(
  name: "Padel 4 Beginners",
  description: "Welcome to a friendly padel tournament! Enjoy a fun-filled game of smashing the ball and strategic plays.",
  visibility: "Public",
  capacity: 4,
  venue: venue12,
  sport: "Padel",
  game_date: Date.today,
  start_time: 16
)

game7.participations.create!([{ user: user3, is_creator: true }])

game8 = Game.create!(
  name: "Squash Rivalry",
  description: "Witness a squash rivalry! Engage in lightning-fast shots and thrilling rallies.",
  visibility: "Public",
  capacity: 4,
  venue: venue5,
  sport: "Squash",
  game_date: Date.today,
  start_time: 18
)

game8.participations.create!([{ user: user5, is_creator: true }, { user: user6 }])

game9 = Game.create!(
  name: "Ace Tennis Challenge",
  description: "Ace Palace presents the ultimate tennis challenge! Showcase of skills in a match filled with aces and powerful rallies.",
  visibility: "Public",
  capacity: 4,
  venue: venue8,
  sport: "Tennis",
  game_date: Date.tomorrow,
  start_time: 6
)

game9.participations.create!([{ user: user7, is_creator: true }, { user: user8 }])

game10 = Game.create!(
  name: "Padel Extravaganza",
  description: "Join us for a padel extravaganza! Promise of an exciting match with smashing rallies and strategic plays.",
  visibility: "Public",
  capacity: 4,
  venue: venue10,
  sport: "Padel",
  game_date: Date.tomorrow,
  start_time: 8
)

game10.participations.create!([{ user: user1, is_creator: true }, { user: user2 }, { user: user4 }])

game11 = Game.create!(
  name: "Squash Spwash",
  description: "Dynamic Courts hosts a squash showdown! Competition in a match full of energy, lightning-fast shots, and precise plays.",
  visibility: "Public",
  capacity: 4,
  venue: venue6,
  sport: "Squash",
  game_date: Date.tomorrow,
  start_time: 10
)

game11.participations.create!([{ user: user3, is_creator: true }, { user: user4 }])

game12 = Game.create!(
  name: "Tennis Masters",
  description: "Rally Masters Tennis! Showcase of tennis mastery in a match filled with powerful serves and precise shots.",
  visibility: "Public",
  capacity: 4,
  venue: venue9,
  sport: "Tennis",
  game_date: Date.tomorrow,
  start_time: 12
)

game12.participations.create!([{ user: user5, is_creator: true }])

game13 = Game.create!(
  name: "Padel Championship",
  description: "Padel Championship! Thrilling match of strategic padel plays and intense rallies.",
  visibility: "Public",
  capacity: 4,
  venue: venue11,
  sport: "Padel",
  game_date: Date.tomorrow,
  start_time: 14
)

game13.participations.create!([{ user: user7, is_creator: true }, { user: user8 }])

game14 = Game.create!(
  name: "Squash Mastery",
  description: "Experience squash mastery! Showcase of skills in a match filled with tricky shots and deceptive plays.",
  visibility: "Public",
  capacity: 4,
  venue: venue5,
  sport: "Squash",
  game_date: Date.tomorrow,
  start_time: 16
)

game14.participations.create!([{ user: user1, is_creator: true }, { user: user2 }, { user: user7 }])

game15 = Game.create!(
  name: "Tennis Showtime",
  description: "It's tennis showtime! Promise of an entertaining match with skillful plays and friendly competition.",
  visibility: "Public",
  capacity: 4,
  venue: venue2,
  sport: "Tennis",
  game_date: Date.tomorrow,
  start_time: 18
)

game15.participations.create!([{ user: user3, is_creator: true }, { user: user4 }])

game16 = Game.create!(
  name: "Padel Prodigy",
  description: "Witness a padel prodigy match! Showcase of expertise in a game filled with skillful plays and strategic moves.",
  visibility: "Public",
  capacity: 4,
  venue: venue6,
  sport: "Padel",
  game_date: Date.today,
  start_time: 8
)

game16.participations.create!([{ user: user5, is_creator: true }])

game17 = Game.create!(
  name: "Squash Extravaganza",
  description: "Join us for a squash challenge extravaganza! Competition in a match filled with intensity and squash mastery.",
  visibility: "Public",
  capacity: 4,
  venue: venue5,
  sport: "Squash",
  game_date: Date.today - 1,
  start_time: 10
)

game17.participations.create!([{ user: user7, is_creator: true }, { user: user8 }])

game18 = Game.create!(
  name: "Tennis Showdown",
  description: "Join us for an ace tennis showdown! Promise of a match filled with powerful serves, intense rallies, and a lot of fun.",
  visibility: "Public",
  capacity: 4,
  venue: venue4,
  sport: "Tennis",
  game_date: Date.today - 1,
  start_time: 14
)

game18.participations.create!([{ user: user1, is_creator: true }])

game19 = Game.create!(
  name: "Bob's Center Open",
  description: "Welcome to Bob's Tennis Center Open! A friendly tennis competition with skilled players and a great atmosphere.",
  visibility: "Public",
  capacity: 4,
  venue: venue2,
  sport: "Tennis",
  game_date: Date.today - 1,
  start_time: 18
)

game19.participations.create!([{ user: user3, is_creator: true }, { user: user4 }])

game20 = Game.create!(
  name: "Racket Challenge",
  description: "Experience the Racket Haven Squash Challenge! Tight spaces, lightning-fast shots, and thrilling squash matches await you.",
  visibility: "Public",
  capacity: 4,
  venue: venue5,
  sport: "Squash",
  game_date: Date.today - 1,
  start_time: 10
)

game20.participations.create!([{ user: user5, is_creator: true }])

game21 = Game.create!(
  name: "Ace Tennis",
  description: "Ace Palace invites you to the Padel Tournament! Smash the ball, strategic plays, and exciting padel matches.",
  visibility: "Public",
  capacity: 4,
  venue: venue8,
  sport: "Padel",
  game_date: Date.today - 1,
  start_time: 14
)

game21.participations.create!([{ user: user7, is_creator: true }, { user: user8 }, { user: user4 }])

game22 = Game.create!(
  name: "Rapid Tennis",
  description: "Experience a rapid tennis showdown! Showcase of agility and precision in a fast-paced match.",
  visibility: "Public",
  capacity: 4,
  venue: venue8,
  sport: "Tennis",
  game_date: Date.today - 1,
  start_time: 16
)

game22.participations.create!([{ user: user7, is_creator: true }, { user: user8 }])

game23 = Game.create!(
  name: "Padel 4 Dawgs",
  description: "Dive into a dynamic padel challenge! Promise of an exhilarating match filled with strategic plays.",
  visibility: "Public",
  capacity: 4,
  venue: venue10,
  sport: "Padel",
  game_date: Date.tomorrow,
  start_time: 18
)

game23.participations.create!([{ user: user1, is_creator: true }, { user: user2 }, { user: user3 }])

game3 = Game.create!(
  name: "Squash Showdown",
  description: "Get ready for a squash showdown spectacle! Competition for victory in a high-energy match.",
  visibility: "Public",
  capacity: 4,
  venue: venue12,
  sport: "Squash",
  game_date: Date.tomorrow,
  start_time: 14
)

game3.participations.create!([{ user: user3, is_creator: true }, { user: user4 }])


game24 = Game.create!(
  name: "Tennis Tango",
  description: "Join the tennis tango tournament for a thrilling match of skills and strategy!",
  visibility: "Team",
  capacity: 4,
  venue: venue1,
  community: community1,
  sport: "Tennis",
  game_date: Date.today,
  start_time: 16
)

game24.participations.create!([{ user: user1, is_creator: true }, { user: user2 }, { user: user6 }])


game26 = Game.create!(
  name: "Padel Showdown",
  description: "Prepare for a padel palace showdown filled with fast-paced action and intense rallies!",
  visibility: "Team",
  capacity: 4,
  venue: venue2,
  community: community2,
  sport: "Padel",
  game_date: Date.today,
  start_time: 16
)

game26.participations.create!([{ user: user3, is_creator: true }, { user: user4 }, { user: user8 }])


game27 = Game.create!(
  name: "Tennis Triumph",
  description: "Experience the thrill of victory in the tennis triumph tournament! Battle it out for the top spot.",
  visibility: "Team",
  capacity: 4,
  venue: venue3,
  community: community3,
  sport: "Tennis",
  game_date: Date.today,
  start_time: 16
)

game27.participations.create!([{ user: user5, is_creator: true }, { user: user6 }])


game28 = Game.create!(
  name: "Padel Power",
  description: "Engage in a padel power play where strategy meets excitement! Compete for dominance on the court.",
  visibility: "Team",
  capacity: 4,
  venue: venue4,
  community: community4,
  sport: "Padel",
  game_date: Date.today,
  start_time: 16
)

game28.participations.create!([{ user: user7, is_creator: true }, { user: user8 }])


game29 = Game.create!(
  name: "Tennis Tussle",
  description: "Join the tennis turf tussle for a challenging match on the courts!",
  visibility: "Team",
  capacity: 4,
  venue: venue5,
  community: community1,
  sport: "Tennis",
  game_date: Date.today,
  start_time: 16
)

game29.participations.create!([{ user: user1, is_creator: true }, { user: user6 }])


game30 = Game.create!(
  name: "Padel Paradise",
  description: "Enter the padel paradise showdown and experience the excitement of intense rallies and swift moves!",
  visibility: "Team",
  capacity: 4,
  venue: venue6,
  community: community2,
  sport: "Padel",
  game_date: Date.today,
  start_time: 16
)

game30.participations.create!([{ user: user3, is_creator: true }, { user: user4 }, { user: user8 }])

game31 = Game.create!(
  name: "Tennis Triumph II",
  description: "Compete once again in the tennis triumph tournament! Prove your skills and emerge victorious.",
  visibility: "Team",
  capacity: 4,
  venue: venue7,
  community: community3,
  sport: "Tennis",
  game_date: Date.today,
  start_time: 16
)

game31.participations.create!([{ user: user5, is_creator: true }])


game32 = Game.create!(
  name: "Padel Play II",
  description: "Return for another round of padel power play! Strategize and play your way to glory on the court.",
  visibility: "Team",
  capacity: 4,
  venue: venue8,
  community: community4,
  sport: "Padel",
  game_date: Date.today,
  start_time: 16
)

game32.participations.create!([{ user: user7, is_creator: true }, { user: user8 }])

game33 = Game.create!(
  name: "Sqwash Spwash",
  description: "Get ready for a squash showdown spectacle! Competition for victory in a high-energy match.",
  visibility: "Public",
  capacity: 4,
  venue: venue2,
  sport: "Squash",
  game_date: Date.today,
  start_time: 18
)

game33.participations.create!([{ user: user5, is_creator: true }, { user: user6 }])

game34 = Game.create!(
  name: "Wagon Squash",
  description: "Get ready for a squash showdown spectacle! Competition for victory in a high-energy match.",
  visibility: "Public",
  capacity: 4,
  venue: venue11,
  sport: "Squash",
  game_date: Date.today,
  start_time: 18
)

game34.participations.create!([{ user: user3, is_creator: true }, { user: user6 }])

game35 = Game.create!(
  name: "Squash 4 Humanity",
  description: "Get ready for a squash showdown spectacle! Competition for victory in a high-energy match.",
  visibility: "Public",
  capacity: 4,
  venue: venue7,
  sport: "Squash",
  game_date: Date.tomorrow,
  start_time: 14
)

game35.participations.create!([{ user: user7, is_creator: true }, { user: user3 }])

puts "Successfully generated #{Game.count} games"

puts "Generating games chatrooms..."

chatroom_game1 = Chatroom.create!(name: game1.name, game_id: game1.id)
chatroom_game2 = Chatroom.create!(name: game2.name, game_id: game2.id)
chatroom_game3 = Chatroom.create!(name: game3.name, game_id: game3.id)
chatroom_game4 = Chatroom.create!(name: game4.name, game_id: game4.id)
chatroom_game5 = Chatroom.create!(name: game5.name, game_id: game5.id)
chatroom_game6 = Chatroom.create!(name: game6.name, game_id: game6.id)
chatroom_game7 = Chatroom.create!(name: game7.name, game_id: game7.id)
chatroom_game8 = Chatroom.create!(name: game8.name, game_id: game8.id)
chatroom_game9 = Chatroom.create!(name: game9.name, game_id: game9.id)
chatroom_game10 = Chatroom.create!(name: game10.name, game_id: game10.id)
chatroom_game11 = Chatroom.create!(name: game11.name, game_id: game11.id)
chatroom_game12 = Chatroom.create!(name: game12.name, game_id: game12.id)
chatroom_game13 = Chatroom.create!(name: game13.name, game_id: game13.id)
chatroom_game14 = Chatroom.create!(name: game14.name, game_id: game14.id)
chatroom_game15 = Chatroom.create!(name: game15.name, game_id: game15.id)
chatroom_game16 = Chatroom.create!(name: game16.name, game_id: game16.id)
chatroom_game17 = Chatroom.create!(name: game17.name, game_id: game17.id)
chatroom_game18 = Chatroom.create!(name: game18.name, game_id: game18.id)
chatroom_game19 = Chatroom.create!(name: game19.name, game_id: game19.id)
chatroom_game20 = Chatroom.create!(name: game20.name, game_id: game20.id)
chatroom_game21 = Chatroom.create!(name: game21.name, game_id: game21.id)
chatroom_game22 = Chatroom.create!(name: game22.name, game_id: game22.id)
chatroom_game23 = Chatroom.create!(name: game23.name, game_id: game23.id)
chatroom_game24 = Chatroom.create!(name: game24.name, game_id: game24.id)
chatroom_game26 = Chatroom.create!(name: game26.name, game_id: game26.id)
chatroom_game27 = Chatroom.create!(name: game27.name, game_id: game27.id)
chatroom_game28 = Chatroom.create!(name: game28.name, game_id: game28.id)
chatroom_game29 = Chatroom.create!(name: game29.name, game_id: game29.id)
chatroom_game30 = Chatroom.create!(name: game30.name, game_id: game30.id)
chatroom_game31 = Chatroom.create!(name: game31.name, game_id: game31.id)
chatroom_game32 = Chatroom.create!(name: game32.name, game_id: game32.id)
chatroom_game33 = Chatroom.create!(name: game33.name, game_id: game33.id)
chatroom_game34 = Chatroom.create!(name: game34.name, game_id: game34.id)
chatroom_game35 = Chatroom.create!(name: game35.name, game_id: game35.id)


puts "Successfully generated chatrooms for #{Game.count} games"

puts "Generating community chatrooms..."

chatroom_community1 = Chatroom.create!(name: community1.name, community_id: community1.id)
chatroom_community2 = Chatroom.create!(name: community2.name, community_id: community2.id)
chatroom_community3 = Chatroom.create!(name: community3.name, community_id: community3.id)
chatroom_community4 = Chatroom.create!(name: community4.name, community_id: community4.id)

puts "Successfully generated chatrooms for #{Community.count} communities"

puts "Generating messages..."

Message.create(sender: user1, chatroom: chatroom_game1, content: "Anyone up for a game?")
Message.create(sender: user2, chatroom: chatroom_game2, content: "I'm ready for the next round!")
Message.create(sender: user3, chatroom: chatroom_game3, content: "Let's make this game epic!")
Message.create(sender: user4, chatroom: chatroom_game4, content: "Ready to show my skills!")
Message.create(sender: user5, chatroom: chatroom_game5, content: "Game on! Who's with me?")
Message.create(sender: user6, chatroom: chatroom_game6, content: "Time for some gaming action!")
Message.create(sender: user7, chatroom: chatroom_game7, content: "Count me in for the game!")
Message.create(sender: user8, chatroom: chatroom_game8, content: "I've been practicing – bring it on!")
Message.create(sender: user1, chatroom: chatroom_game9, content: "New game, new challenges!")
Message.create(sender: user2, chatroom: chatroom_game10, content: "Game time! Let's do this!")
Message.create(sender: user3, chatroom: chatroom_game11, content: "Who's up for some friendly competition?")
Message.create(sender: user4, chatroom: chatroom_game12, content: "Game faces on, everyone!")
Message.create(sender: user5, chatroom: chatroom_game13, content: "Ready to dominate the game!")
Message.create(sender: user6, chatroom: chatroom_game14, content: "Game enthusiasts, unite!")
Message.create(sender: user7, chatroom: chatroom_game15, content: "Let's make this game memorable!")
Message.create(sender: user8, chatroom: chatroom_game16, content: "I smell victory in the air!")
Message.create(sender: user1, chatroom: chatroom_game17, content: "Game night is the best night!")
Message.create(sender: user2, chatroom: chatroom_game18, content: "Another game, another adventure!")
Message.create(sender: user3, chatroom: chatroom_game19, content: "Gaming squad, assemble!")
Message.create(sender: user4, chatroom: chatroom_game20, content: "Game strategy locked and loaded!")
Message.create(sender: user5, chatroom: chatroom_game21, content: "Let's make this game legendary!")
Message.create(sender: user6, chatroom: chatroom_game22, content: "Ready to level up in this game!")
Message.create(sender: user7, chatroom: chatroom_game23, content: "Who's bringing beers?")

Message.create(sender: user1, chatroom: chatroom_community1, content: "Should we go for a game next week?")
Message.create(sender: user2, chatroom: chatroom_community1, content: "I'm down! Have 2 friends who would be keen to join I think")
Message.create(sender: user3, chatroom: chatroom_community1, content: "If you're still looking for a player I'm in")
Message.create(sender: user4, chatroom: chatroom_community1, content: "Who remembers the name of that one guy we played with last week? With the great smash")
Message.create(sender: user5, chatroom: chatroom_community1, content: "John I think?")
Message.create(sender: user6, chatroom: chatroom_community1, content: "Yeah that's the one")
Message.create(sender: user2, chatroom: chatroom_community2, content: "We should try out that new tennis court in Claremont")
Message.create(sender: user3, chatroom: chatroom_community3, content: "Guys what is the purpose of life")
Message.create(sender: user4, chatroom: chatroom_community4, content: "Can't wait for the next game!")

puts "Successfully generated #{Message.count} messages"
