# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Browse through our user ...'
user1 = { email: 'oscar.sod@gmx.de', password: '123456' }

[user1].each do |attributes|
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
suhita = { name: 'Sushita', address: 'Plaza de Major', description: 'Really good and cheap restaurant', category: 'restaurant', price: '', price_class: '2/4' }

[suhita].each do |attributes|
  activity = Activity.create!(attributes)
  puts "Created #{activity.name}"
end

puts 'Browse through our hotels ...'
totem = { date_coming: '24-08-2021', date_leaving: '28-08-2021', name: 'Totem', address: 'Calle de Ayala 78', description: 'Relaxing hotel', price: '100', price_class: '2/4' }

[totem].each do |attributes|
  hotel = Hotel.create!(attributes)
  puts "Created #{hotel.name}"
end
