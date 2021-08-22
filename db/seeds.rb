User.create!(name: 'Korrine Cloutier',
             email: 'korrine@cloutier.com',
             password: '9h>w9BRHhhukP.&',
             password_confirmation: '9h>w9BRHhhukP.&')

User.create!(name: 'Tabitha Vadas',
             email: 'tabitha@vadas.com',
             password: 'Hkyh+?RwC2L6A7',
             password_confirmation: 'Hkyh+?RwC2L6A7')

User.create!(name: 'Pua Mlakar',
             email: 'pua@mlukar.com',
             password: '441redman',
             password_confirmation: '441redman')

User.create!(name: 'Culhwch Poletti',
             email: 'poletti@culhwch.com',
             password: '441redman',
             password_confirmation: '441redman')

User.create!(name: 'Anna Bosschild',
             email: 'anna@123.com',
             password: 'gyu57655g',
             password_confirmation: 'gyu57655g')

User.create!(name: 'Zartosht Vasylyk',
             email: 'zartosht@gmail.com',
             password: 'ecencrypted_password',
             password_confirmation: 'ecencrypted_password')

User.create!(name: 'Example User',
             email: 'user@example.com',
             password: 'encrypted_password',
             password_confirmation: 'encrypted_password')

Event.create!(host_id: '7',
              name: 'East Meets West Orchestral Evening',
              description: "Experience Australia's finest musicians performing traditional and contemporary music from the East and the West, including the acclaimed Chinese classics, Butterfly Lovers Violin Concerto and the Yellow River Piano Concerto. This orchestral concert will begin its national tour in Canberra, followed by Sydney, Brisbane and Adelaide from late June to September 2021.",
              location: 'Sydney Town Hall
              483 George Street
              Sydney, NSW 2000',
              start_date: Date.new(2021, 7, 9),
              start_time: Time.zone.parse("19:30:00"),
              end_date: Date.new(2021, 7, 9),
              end_time: Time.zone.parse("21:30:00"))

Event.create!(host_id: '2',
              name: 'Blak-Palestinian Poetry Night | Sydney',
              description: 'Join Blak and Palestinian poets, artists and activists for an evening of poetry, performance and discussion.',
              location: 'Bankstown Community Arts Centre
              5 Olympic Parade
              Bankstown, NSW 2200',
              start_date: Date.new(2021, 7, 3),
              start_time: Time.zone.parse("18:00:00"),
              end_date: Date.new(2021, 7, 12),
              end_time: Time.zone.parse("20:00:00"))

Event.create!(host_id: '3',
              name: 'Seaside Scavenge Bronte Festival',
              description: 'In partnership with the Hon. Dave Sharma and Waverley Council, we are hosting the Bronte Seaside Scavenge Festival, where the trash you collect becomes “cash” to buy funky pre-loved clothes, toys and books.',
              location: 'Bronte Beach Park
              Bronte Road
              Bronte, NSW 2024',
              start_date: Date.new(2021, 6, 27),
              start_time: Time.zone.parse("11:00:00"),
              end_date: Date.new(2021, 6, 27),
              end_time: Time.zone.parse("15:00:00"))
              
past_events = [
  {
    host_id: '7',
    name: 'Girl Boss Night: Your biggest learnings',
    description: "An in-person and virtual event! We'll discuss your biggest learnings - what chances did you take (or not take) to get your dream career!",
    location: 'VMware Sydney
    Mezzanine level, 175 Pitt St
    Sydney, NSW 2000',
    start_date: Date.new(2021, 6, 17),
    start_time: Time.zone.parse("18:00:00"),
    end_date:  Date.new(2021, 6, 5),
    end_time: Time.zone.parse("20:00:00")
  },
  {
    host_id: '6',
    name: "2021 Private Dining at The Grounds of Alexandria",
    description: 'Sit back, relax and enjoy a lavish, candle-lit feast in your own private dining room at The Grounds of Alexandria!!',
    location: 'The Grounds of Alexandria.
    2 Huntley Street
    #7a
    Alexandria, NSW 2015',
    start_date: Date.new(2021, 6, 5),
    start_time: Time.zone.parse("18:00:00"),
    end_date: Date.new(2021, 6, 5),
    end_time: Time.zone.parse("21:00:00")
  },
  {
    host_id: '14',
    name: "Sydney's True Crime Tour",
    description: "Take a trip back in time and rediscover a bounty of Sydney True Crime stories combining humanity's darkest deeds with incredible scenery.",
    location: 'Parbury Lane
    Parbury Lane
    Dawes Point, NSW 2000',
    start_date: Date.new(2021, 5, 26),
    start_time: Time.zone.parse("19:20:00"),
    end_date:  Date.new(2021, 5, 26),
    end_time: Time.zone.parse("20:00:00")
  }
]

past_events.each do |event|
  new_event = Event.new(event)
  new_event.save!(validate: false)
end