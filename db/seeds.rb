# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'Browse through our trips ...'
madrid = { user_id: 1, total_price: 500, booked: true, date_coming: '24-08-2021', date_leaving: '28-08-2021', destination: 'madrid', type_transportation: 'plane', people: 2 }

[madrid].each do |attributes|
  trip = Trip.create!(attributes)
  puts "Created #{trip.destination}"
end

puts 'Browse through our activities ...'
suhitac = { name: 'Sushita Cafe', address: 'Calle de Miguel Ángel, 11, 28010 Madrid, Spain', description: 'We only use the japonica variety, which is the best for sushi. Our exclusive cooking and preparation formula makes it unique in taste and texture. Our fish comes from sustainable fishing and is brought weekly from Norway, Alaska, etc. Later it is deep-frozen to eliminate any risk of Anisakis. From the Mediterranean garden. All the water that we use both to drink and to wash the vegetables and cook the rice is subjected to a natural process to neutralize the acid PH. Alkaline water provides multiple benefits to the body as it is a natural antioxidant.', category: 'japanese restaurant', price: '', price_class: '2/4' }

[suhitac].each do |attributes|
  activity = Activity.create!(attributes)
  puts "Created #{activity.name}"
end

puts 'Browse through our activities ...'
suhitam = { name: 'Sushita Madame', address: 'P.º Calle de la Habana, 15, 28036 Madrid, Spain', description: 'We only use the japonica variety, which is the best for sushi. Our exclusive cooking and preparation formula makes it unique in taste and texture. Our fish comes from sustainable fishing and is brought weekly from Norway, Alaska, etc. Later it is deep-frozen to eliminate any risk of Anisakis. From the Mediterranean garden. All the water that we use both to drink and to wash the vegetables and cook the rice is subjected to a natural process to neutralize the acid PH. Alkaline water provides multiple benefits to the body as it is a natural antioxidant.', category: 'japanese restaurant', price: '', price_class: '2/4' }

[suhitam].each do |attributes|
  activity = Activity.create!(attributes)
  puts "Created #{activity.name}"
end

puts 'Browse through our activities ...'
msuhita = { name: 'Monsieur Sushita', address: 'C. de Velázquez, 68, 28001 Madrid, Spain', description: 'We only use the japonica variety, which is the best for sushi. Our exclusive cooking and preparation formula makes it unique in taste and texture. Our fish comes from sustainable fishing and is brought weekly from Norway, Alaska, etc. Later it is deep-frozen to eliminate any risk of Anisakis. From the Mediterranean garden. All the water that we use both to drink and to wash the vegetables and cook the rice is subjected to a natural process to neutralize the acid PH. Alkaline water provides multiple benefits to the body as it is a natural antioxidant.', category: 'japanese restaurant', price: '', price_class: '2/4' }

[msuhita].each do |attributes|
  activity = Activity.create!(attributes)
  puts "Created #{activity.name}"
end

puts 'Browse through our activities ...'
lcsuhita = { name: 'Le Club Sushita', address: 'C. de Alcalá, 63, 28014 Madrid, Spain', description: 'We only use the japonica variety, which is the best for sushi. Our exclusive cooking and preparation formula makes it unique in taste and texture. Our fish comes from sustainable fishing and is brought weekly from Norway, Alaska, etc. Later it is deep-frozen to eliminate any risk of Anisakis. From the Mediterranean garden. All the water that we use both to drink and to wash the vegetables and cook the rice is subjected to a natural process to neutralize the acid PH. Alkaline water provides multiple benefits to the body as it is a natural antioxidant.', category: 'japanese restaurant', price: '', price_class: '2/4' }

[lcsuhita].each do |attributes|
  activity = Activity.create!(attributes)
  puts "Created #{activity.name}"
end

puts 'Browse through our activities ...'
numa = { name: 'Numa', address: 'C. de Velázquez, 18, 28001 Madrid, Spain', description: 'Discover the great classics of Italian cuisine and their fusion with international cuisine in an environment that will transport you to the most romantic past.', category: 'italien restaurant', price: '', price_class: '4/4' }

[numa].each do |attributes|
  activity = Activity.create!(attributes)
  puts "Created #{activity.name}"
end

puts 'Browse through our activities ...'
amazonico = { name: 'Amazonico', address: 'C. Jorge Juan, 20, 28001 Madrid, Spain', description: 'Amazónico opens its doors in the summer of 2016 and fills the heart of the Barrio de Salamanca, Madrid with freshness, aromas and sensations. Crossing its threshold is entering the greenery and exuberance of the Amazon jungle. The gastronomic proposal is inspired by tropical, Asian and Mediterranean cuisine, with references to Brazilian gastronomy, the country of origin of our chef Sandro Silva.', category: 'italien restaurant', price: '', price_class: '4/4' }

[amazonico].each do |attributes|
  activity = Activity.create!(attributes)
  puts "Created #{activity.name}"
end

puts 'Browse through our hotels ...'
totem = { name: 'Totem', address: 'C. de Hermosilla, 23, 28001 Madrid, Spain', description: 'Hotel with gym in the center of Madrid. Design and avant-garde with the best service. Enjoy the best prices and exclusive offers on the hotels website', price: '153', price_class: '2/4' }

[totem].each do |attributes|
  hotel = Hotel.create!(attributes)
  puts "Created #{hotel.name}"
end

puts 'Browse through our hotels ...'
four = { name: 'Four Seasons', address: 'C. de Sevilla, 3, 28014 Madrid, Spain', description: 'Centrally Located In The Heart Of Madrid. Bringing Exciting Restaurants, Bars & An Unmatched Spa Experience. Book Today. 39 Luxurious Suites. Largest Spa In Madrid. 200 Accommodations. Unmatched Spa Experience. Exciting New Restaurants.', price: '770', price_class: '4/4' }

[four].each do |attributes|
  hotel = Hotel.create!(attributes)
  puts "Created #{hotel.name}"
end
