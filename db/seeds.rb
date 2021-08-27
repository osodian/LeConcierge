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
madrid = { user_id: 1, total_price: 500, booked: true, date_coming: '24-08-2021', date_leaving: '28-08-2021', destination: 'madrid', type_transportation: 'plane', people: 2 }

[madrid].each do |attributes|
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
museum_one.photo.attach(io: File.open(Rails.root.join('app/assets/images/activities/activity_museum/museum_one.jpg')),
                  filename: 'museum_one.jpg')

museum_two_attrs = { city: 'Madrid', name: 'Museo Nacional del Prado', address: 'C. de Ruiz de Alarcón, 23, 28014 Madrid, Spain', description: 'The Prado Museum, officially known as Museo Nacional del Prado, is the main Spanish national art museum, located in central Madrid.', price: 37, category: 'museum', price_class: 3 }
museum_two = Activity.create!(museum_two_attrs)
puts "Created #{museum_two.name}"
museum_two.photo.attach(io: File.open(Rails.root.join('app/assets/images/activities/activity_museum/museum_two.jpg')),
                  filename: 'museum_two.jpg')

# [suhitam, suhitac, msuhita, lcsuhita, numa, amazonico].each do |attributes|
#   activity = Activity.create!(attributes)
#   puts "Created #{activity.name}"
# end

puts 'Browse through our hotels ...'
totem_attrs = { city: 'Madrid', name: 'Totem', address: 'C. de Hermosilla, 23, 28001 Madrid, Spain', description: 'Hotel with gym in the center of Madrid. Design and avant-garde with the best service. Enjoy the best prices and exclusive offers on the hotels website', price: 153, price_class: 2 }
totem = Hotel.create!(totem_attrs)
  puts "Created #{totem.name}"
totem.photo.attach(io: File.open(Rails.root.join('app/assets/images/activities/activity_hotels/totem.jpg')),
                  filename: 'totem.jpg')
four_attrs = { city: 'Madrid', name: 'Four Seasons', address: 'C. de Sevilla, 3, 28014 Madrid, Spain', description: 'Centrally Located In The Heart Of Madrid. Bringing Exciting Restaurants, Bars & An Unmatched Spa Experience. Book Today. 39 Luxurious Suites. Largest Spa In Madrid. 200 Accommodations. Unmatched Spa Experience. Exciting New Restaurants.', price: 770, price_class: 4 }
four = Hotel.create!(four_attrs)
  puts "Created #{four.name}"
four.photo.attach(io: File.open(Rails.root.join('app/assets/images/activities/activity_hotels/four.jpg')),
                  filename: 'four.jpg')
# [totem, four].each do |attributes|
#   hotel = Hotel.create!(attributes)
#   puts "Created #{hotel.name}"
# end
