#Clean
City.delete_all
User.delete_all
Listing.delete_all
Reservation.delete_all
######################

#City create
10.times do
  City.create(
    name: Faker::Address.city,
    zip_code: 74400
  )
end
puts "Your City are create !"
###############################

#Create User
20.times do
  User.create(
    email: Faker::Internet.email,
    phone_number: '06'+Faker::PhoneNumber.subscriber_number(length: 8),
    description: Faker::Games::WarhammerFantasy.quote
  )
end
puts "Your Users are create !"
###############################

#Create Listing
50.times do
  Listing.create(
    available_beds: rand(1..10),
    price: rand(10..300),
    description: Faker::Lorem.paragraph,
    has_wifi: [true, false].sample,
    welcome_message: Faker::Lorem.paragraph,
    city_id: City.all.shuffle.last.id,
    admin_id: User.all.shuffle.first.id
  )
end
puts "Your Listing are create !"
################################

#Create Reservations