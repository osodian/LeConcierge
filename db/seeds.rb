# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Browse through our trips ...'
user_one = { email: 'osodddd@gmx.de', password: '123456' }

[user_one].each do |attributes|
  user = User.create!(attributes)
  puts "Created #{user.email}"
end


puts 'Browse through our trips ...'
paris = { user_id: 1, total_price: 500, booked: true, date_coming: '24-08-2021', date_leaving: '28-08-2021', destination: 'Paris', type_transportation: 'plane', people: 2 }
london = { user_id: 1, total_price: 500, booked: true, date_coming: '24-08-2021', date_leaving: '28-08-2021', destination: 'London', type_transportation: 'plane', people: 2 }
berlin = { user_id: 1, total_price: 500, booked: true, date_coming: '24-08-2021', date_leaving: '28-08-2021', destination: 'Berlin', type_transportation: 'plane', people: 2 }


[paris, berlin, london].each do |attributes|
  trip = Trip.create!(attributes)
  puts "Created #{trip.destination}"
end

puts 'Browse through our activities ...'
suhitam_attrs = { city: 'Madrid',name: 'Sushita Madame', address: 'P.º Calle de la Habana, 15, 28036 Madrid, Spain', description: 'We only use the japonica variety, which is the best for sushi. Our exclusive cooking and preparation formula makes it unique in taste and texture. Our fish comes from sustainable fishing and is brought weekly from Norway, Alaska, etc. Later it is deep-frozen to eliminate any risk of Anisakis. From the Mediterranean garden. All the water that we use both to drink and to wash the vegetables and cook the rice is subjected to a natural process to neutralize the acid PH. Alkaline water provides multiple benefits to the body as it is a natural antioxidant.', category: 'japanese restaurant', price_class: 2 }
suhitam = Activity.create!(suhitam_attrs)
puts "Created #{suhitam.name}"
suhitam.photo.attach(io: File.open(Rails.root.join('app/assets/images/activities/activity_restaurants/suhitam.jpg')),
                  filename: 'suhitam.jpg')

suhitac_attrs = { city: 'Madrid', name: 'Sushita Cafe', address: 'Calle de Miguel Ángel, 11, 28010 Madrid, Spain', description: 'We only use the japonica variety, which is the best for sushi. Our exclusive cooking and preparation formula makes it unique in taste and texture. Our fish comes from sustainable fishing and is brought weekly from Norway, Alaska, etc. Later it is deep-frozen to eliminate any risk of Anisakis. From the Mediterranean garden. All the water that we use both to drink and to wash the vegetables and cook the rice is subjected to a natural process to neutralize the acid PH. Alkaline water provides multiple benefits to the body as it is a natural antioxidant.', category: 'japanese restaurant', price_class: 2 }
suhitac = Activity.create!(suhitac_attrs)
puts "Created #{suhitac.name}"
suhitac.photo.attach(io: File.open(Rails.root.join('app/assets/images/activities/activity_restaurants/suhitac.jpg')),
                  filename: 'suhitac.jpg')

msuhita_attrs = { city: 'Madrid', name: 'Monsieur Sushita', address: 'C. de Velázquez, 68, 28001 Madrid, Spain', description: 'We only use the japonica variety, which is the best for sushi. Our exclusive cooking and preparation formula makes it unique in taste and texture. Our fish comes from sustainable fishing and is brought weekly from Norway, Alaska, etc. Later it is deep-frozen to eliminate any risk of Anisakis. From the Mediterranean garden. All the water that we use both to drink and to wash the vegetables and cook the rice is subjected to a natural process to neutralize the acid PH. Alkaline water provides multiple benefits to the body as it is a natural antioxidant.', category: 'japanese restaurant', price_class: 2 }
msuhita = Activity.create!(msuhita_attrs)
puts "Created #{msuhita.name}"
msuhita.photo.attach(io: File.open(Rails.root.join('app/assets/images/activities/activity_restaurants/msuhita.jpg')),
                  filename: 'msuhita.jpg')

lcsuhita_attrs = { city: 'Madrid', name: 'Le Club Sushita', address: 'C. de Alcalá, 63, 28014 Madrid, Spain', description: 'We only use the japonica variety, which is the best for sushi. Our exclusive cooking and preparation formula makes it unique in taste and texture. Our fish comes from sustainable fishing and is brought weekly from Norway, Alaska, etc. Later it is deep-frozen to eliminate any risk of Anisakis. From the Mediterranean garden. All the water that we use both to drink and to wash the vegetables and cook the rice is subjected to a natural process to neutralize the acid PH. Alkaline water provides multiple benefits to the body as it is a natural antioxidant.', category: 'japanese restaurant', price_class: 2 }
lcsuhita = Activity.create!(lcsuhita_attrs)
puts "Created #{lcsuhita.name}"
lcsuhita.photo.attach(io: File.open(Rails.root.join('app/assets/images/activities/activity_restaurants/lcsuhita.jpg')),
                  filename: 'lcsuhita.jpg')

numa_attrs = { city: 'Madrid', name: 'Numa', address: 'C. de Velázquez, 18, 28001 Madrid, Spain', description: 'Discover the great classics of Italian cuisine and their fusion with international cuisine in an environment that will transport you to the most romantic past.', category: 'italian restaurant', price_class: 4 }
numa = Activity.create!(numa_attrs)
puts "Created #{numa.name}"
numa.photo.attach(io: File.open(Rails.root.join('app/assets/images/activities/activity_restaurants/numa.jpg')),
                  filename: 'numa.jpg')

amazonico_attrs = { city: 'Madrid', name: 'Amazonico', address: 'C. Jorge Juan, 20, 28001 Madrid, Spain', description: 'Amazónico opens its doors in the summer of 2016 and fills the heart of the Barrio de Salamanca, Madrid with freshness, aromas and sensations. Crossing its threshold is entering the greenery and exuberance of the Amazon jungle. The gastronomic proposal is inspired by tropical, Asian and Mediterranean cuisine, with references to Brazilian gastronomy, the country of origin of our chef Sandro Silva.', category: 'italian restaurant', price_class: 4 }
amazonico = Activity.create!(amazonico_attrs)
puts "Created #{amazonico.name}"
amazonico.photo.attach(io: File.open(Rails.root.join('app/assets/images/activities/activity_restaurants/amazonico.jpg')),
                  filename: 'amazonico.jpg')

museum_one_attrs = { city: 'Madrid', name: 'Museo Nacional Centro de Arte Reina Sofía', address: 'C. de Sta. Isabel, 52, 28012 Madrid, Spain', description: 'The Museo Nacional Centro de Arte Reina Sofía is Spains national museum of 20th-century art. The museum was officially inaugurated on September 10, 1990, and is named for Queen Sofía. It is located in Madrid, near the Atocha train and metro stations, at the southern end of the so-called Golden Triangle of Art.', price: 15, category: 'museum', price_class: 1 }
museum_one = Activity.create!(museum_one_attrs)
puts "Created #{museum_one.name}"
museum_one.photo.attach(io: File.open(Rails.root.join('app/assets/images/activities/activity_museum/museum_one.jpeg')),
                  filename: 'museum_one.jpeg')

museum_two_attrs = { city: 'Madrid', name: 'Museo Nacional del Prado', address: 'C. de Ruiz de Alarcón, 23, 28014 Madrid, Spain', description: 'The Prado Museum, officially known as Museo Nacional del Prado, is the main Spanish national art museum, located in central Madrid.', price: 37, category: 'museum', price_class: 3 }
museum_two = Activity.create!(museum_two_attrs)
puts "Created #{museum_two.name}"
museum_two.photo.attach(io: File.open(Rails.root.join('app/assets/images/activities/activity_museum/museum_two.jpeg')),
                  filename: 'museum_two.jpeg')

liberty_attrs = { city: 'Madrid',name: 'Liberty Club', address: 'Calle de Juan Bravo, 31, 28006 Madrid, Spain', description: 'Liberty Madrid is one of the most popular creations of Madrids posh neighbourhood Barrio Salamanca. The fashionable club has two floors of music ', category: 'club', price_class: 3 }
liberty = Activity.create!(liberty_attrs)
puts "Created #{liberty.name}"
liberty.photo.attach(io: File.open(Rails.root.join('app/assets/images/activities/activity_restaurants/liberty_Activity.jpg')),
                  filename: 'liberty_Activity.jpg')

icon_attrs = { city: 'Madrid',name: 'Icon Club', address: 'Calle del Dr Cortezo, 1, 28012 Madrid, Spain', description: 'Icon Madrid is a club with a lot of history located in the city center below the impressive Teatro Calderón. ', category: 'club', price_class: 2 }
icon = Activity.create!(icon_attrs)
puts "Created #{icon.name}"
icon.photo.attach(io: File.open(Rails.root.join('app/assets/images/activities/activity_restaurants/icon_Activity.jpg')),
                  filename: 'icon_Activity.jpg')

bardot_attrs = { city: 'Madrid',name: 'Bardot Club', address: 'C. de Joaquín Costa, 29, 28002 Madrid, Spain', description: 'Bardot Madrid is a club with a lot of history located in the city center below the impressive Teatro Calderón.', category: 'club', price_class: 2 }
bardot = Activity.create!(bardot_attrs)
puts "Created #{bardot.name}"
bardot.photo.attach(io: File.open(Rails.root.join('app/assets/images/activities/activity_restaurants/bardot_Activity.jpg')),
                  filename: 'bardot_Activity.jpg')#   activity = Activity.create!(attributes)
#   puts "Created #{activity.name}"
# end

puts 'Browse through sights'
sol_attrs = { city: 'Madrid',name: 'Puerta del Sol', address: 'Puerta del Sol Madrid, Spain', description: 'Sol is the heart of Madrid, with several busy pedestrian shopping streets converging on 18th-century plaza Puerta del Sol. Modern department stores and old-school tapas bars keep the area lively by day, while the areas pubs and clubs fill with a young crowd at night.', category: 'sight', price_class: 0 }
sol = Activity.create!(sol_attrs)
puts "Created #{sol.name}"
sol.photo.attach(io: File.open(Rails.root.join('app/assets/images/activities/activity_sight/sol_Activity.jpg')),
                  filename: 'sol_Activity.jpg')

major_attrs = { city: 'Madrid',name: 'Plaza de Mayor', address: 'Plaza de mayor Madrid, Spain', description: 'major is the heart of Madrid, with several busy pedestrian shopping streets converging on 18th-century plaza Puerta del major. Modern department stores and old-school tapas bars keep the area lively by day, while the areas pubs and clubs fill with a young crowd at night.', category: 'sight', price_class: 0 }
major = Activity.create!(major_attrs)
puts "Created #{major.name}"
major.photo.attach(io: File.open(Rails.root.join('app/assets/images/activities/activity_sight/major_Activity.jpg')),
                  filename: 'major_Activity.jpg')

royal_attrs = { city: 'Madrid',name: 'Royal Palace of Madrid', address: 'C. de Bailén, s/n, 28071 Madrid, Spain', description: 'The Royal Palace of Madrid is the official residence of the Spanish royal family at the city of Madrid, although now used only for state ceremonies. The palace has 135,000 m² of floor space and contains 3,418 rooms. ', category: 'sight', price_class: 0  }
royal = Activity.create!(royal_attrs)
puts "Created #{royal.name}"
royal.photo.attach(io: File.open(Rails.root.join('app/assets/images/activities/activity_sight/rpm.png')),
                  filename: 'rpm.png')


puts 'Browse through our Outdoors'
kart_attrs = { city: 'Madrid',name: 'Carlos Sainz Karting', address: 'Las Rozas de Madrid, Spain', description: 'In Carlos Sainz Karting you will discover all the excitement of a Grand Prix. And you will also find unique venues to celebrate your meetings', category: 'outdoor', price_class: 2  }
kart = Activity.create!(kart_attrs)
puts "Created #{kart.name}"
kart.photo.attach(io: File.open(Rails.root.join('app/assets/images/activities/activity_outdoor/kart_Activity.jpg')),
                  filename: 'kart_Activity.jpg')


paintball_attrs = { city: 'Madrid',name: 'Paintball Madrid', address: 'Majadahonda, Madrid Spain', description: 'Paintball team play a little bit outside of Madrid. Perfect landscape with many places to hide and feel connected to nature', category: 'outdoor', price_class: 2  }
paintball = Activity.create!(paintball_attrs)
puts "Created #{paintball.name}"
paintball.photo.attach(io: File.open(Rails.root.join('app/assets/images/activities/activity_outdoor/paintball_Activity.jpg')),
                  filename: 'paintball_Activity.jpg')

hike_attrs = { city: 'Madrid',name: 'Sierra de Guadarrama', address: 'Sierra de Guadarrama, Spain', description: 'North of Madrid lies the Sierra de Guadarrama, part of the larger Sistema Central, the chain of mountains snaking down the centre of Spain. With their close proximity to Madrid, the mountains are a popular spot for a day trip, whether you like sports, nature or exploring historic towns and villages.', category: 'outdoor', price_class: 0  }
hike = Activity.create!(hike_attrs)
puts "Created #{hike.name}"
hike.photo.attach(io: File.open(Rails.root.join('app/assets/images/activities/activity_outdoor/hike_Activity.jpg')),
                  filename: 'hike_Activity.jpg')

puts 'Browse through our hotels ...'
totem_attrs = { city: 'Madrid', name: 'Totem', address: 'C. de Hermosilla, 23, 28001 Madrid, Spain', description: 'Hotel with gym in the center of Madrid. Design and avant-garde with the best service. Enjoy the best prices and exclusive offers on the hotels website', price: 153, price_class: 2 }
totem = Hotel.create!(totem_attrs)
  puts "Created #{totem.name}"
totem.photo.attach(io: File.open(Rails.root.join('app/assets/images/activities/activity_hotels/totem.jpg')),
                  filename: 'totem.jpg')
four_attrs = { city: 'Madrid', name: 'Four Seasons', address: 'C. de Sevilla, 3, 28014 Madrid, Spain', description: 'Centrally Located In The Heart Of Madrid. Bringing Exciting Restaurants, Bars & An Unmatched Spa Experience. Book Today. 39 Luxurious Suites.', price: 770, price_class: 4 }
four = Hotel.create!(four_attrs)
  puts "Created #{four.name}"
four.photo.attach(io: File.open(Rails.root.join('app/assets/images/activities/activity_hotels/fsm.jpeg')),
                  filename: 'fsm.jpeg')
# [totem, four].each do |attributes|
#   hotel = Hotel.create!(attributes)
#   puts "Created #{hotel.name}"
# end

nh = { city: 'Madrid', name: 'NH Hotel', address: 'Gran Via, 21, 28013 Madrid, Spain', description: 'Keeping both our guests and staff safe is one of our biggest priorities. For this reason certain services or amenities may not be available, or only available on request, at this hotel during your stay.', price: 135, price_class: 2 }
nh_hotel = Hotel.create!(nh)
  puts "Created #{nh_hotel.name}"
nh_hotel.photo.attach(io: File.open(Rails.root.join('app/assets/images/activities/activity_hotels/NH_Hotel.jpg')),
                  filename: 'NH_Hotel.jpg')


riu = { city: 'Madrid', name: 'Riu Hotel', address: 'C/ Gran Vía, 84, 28013 Madrid, Spain', description: 'RIU Plaza España. No Reservation Costs. Great Rates. Low Rates. Special Offers. Best Price Guarantee. Great Availability. No Booking Fees. Types: Hotels, Apartments, Villas, Hostels, Resorts, B&Bs.', price: 104, price_class: 2 }
riu_hotel = Hotel.create!(riu)
  puts "Created #{riu_hotel.name}"
riu_hotel.photo.attach(io: File.open(Rails.root.join('app/assets/images/activities/activity_hotels/riu_Hotel.jpg')),
                  filename: 'riu_Hotel.jpg')


nuevo = { city: 'Madrid', name: 'Nuevo Boston', address: ' Av. de Aragón, 332, 28022 Madrid, Spain', description: 'Stay in the Nuevo Boston Hotel, a hotel near Adolfo Suarez Airport of Madrid-Barajas, estadium Wanda Metropolitano and near IFEMA specialised in leisure', price: 52, price_class: 1 }
nuevo_hotel = Hotel.create!(nuevo)
  puts "Created #{nuevo_hotel.name}"
nuevo_hotel.photo.attach(io: File.open(Rails.root.join('app/assets/images/activities/activity_hotels/nuevo_Hotel.jpg')),
                  filename: 'nuevo_Hotel.jpg')

ibis = { city: 'Madrid', name: 'Ibis Hotel', address: 'Av. General, 49, 28042 Madrid, Spain', description: 'For A Quality, Affordable Stay! Enjoy an Outstanding Stay with ibis. Benefit from our Services at Exclusive Prices.', price: 69, price_class: 1 }
ibis_hotel = Hotel.create!(ibis)
  puts "Created #{ibis_hotel.name}"
ibis_hotel.photo.attach(io: File.open(Rails.root.join('app/assets/images/activities/activity_hotels/ibis_Hotel.jpg')),
                  filename: 'ibis_Hotel.jpg')

clement = { city: 'Madrid', name: 'clement Hotel', address: 'Av. General, 43, 28042 Madrid, Spain', description: 'Clement Hotel offers you a unique experience in a privileged place, with multiple possibilities, just a few minutes from Madrid airport. ', price: 75, price_class: 2 }
clement_hotel = Hotel.create!(clement)
  puts "Created #{clement_hotel.name}"
clement_hotel.photo.attach(io: File.open(Rails.root.join('app/assets/images/activities/activity_hotels/clement_Hotel.jpg')),
                  filename: 'clement_Hotel.jpg')
