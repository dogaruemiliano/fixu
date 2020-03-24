require 'faker'

puts "*" * 80
puts "Seeding started"
puts

puts "-" * 80
puts "Creating users"
puts "-" * 80
users_data = [
  {
    email: "emi@gmail.com",
    password: "123456",
    first_name: "Emiliano",
    last_name: "Dogaru",
    address: "Barcelona, Arizala 57",
    phone_number: Faker::PhoneNumber.phone_number
  },

  {
    email: "sang@gmail.com",
    password: "123456",
    first_name: "Sang-Soo",
    last_name: "Ra",
    address: "Barcelona, Simo Oller 2",
    phone_number: Faker::PhoneNumber.phone_number
  },

  {
    email: "leon@gmail.com",
    password: "123456",
    first_name: "Leon",
    last_name: "Ellerbrock",
    address: "Barcelona, Calvet 58",
    phone_number: Faker::PhoneNumber.phone_number
  },

  {
    email: "Abder@gmail.com",
    password: "123456",
    first_name: "Abderrahim",
    last_name: "Nadifi",
    address: "Barcelona, Grassot 101",
    phone_number: Faker::PhoneNumber.phone_number
  },
]

users_data.each do |user_data|
  user = User.create!(user_data)
  puts "Created user with email:#{user.email}"
end
puts "-" * 80
puts "Done creating users"
puts "-" * 80

puts
puts "Seeding ended"
puts "*" * 80
