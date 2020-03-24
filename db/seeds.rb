require 'faker'

# Data used for seeding
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

categories_data = [
  { name: "Dishwasher" },
  { name: "Fridge" },
  { name: "Washing Machine" },
  { name: "Microwave Oven" },
  { name: "Shower" },
  { name: "Sink" },
  { name: "Cooker" },
  { name: "Oven" },
  { name: "Cooker Hood" }

]

puts "*" * 60
puts "Seeding started"
puts

puts "-" * 60
puts "Destroying models"
puts "-" * 60

User.destroy_all
puts "Destroyed all User models"

Category.destroy_all
puts "Destroyed all Category models"

puts "-" * 60
puts "Destroyed all previous models"
puts "-" * 60
puts

puts "-" * 60
puts "Creating users"
puts "-" * 60

users_data.each do |user_data|
  user = User.create!(user_data)
  puts "Created user with email: #{user.email}"
end
puts "-" * 60
puts "Done creating users"
puts "-" * 60
puts
puts "-" * 60
puts "Creating categories"
puts "-" * 60

categories_data.each do |category_data|
  category = Category.create!(category_data)
  puts "Created catetgory with name: #{category.name}"
end

puts "-" * 60
puts "Done creating categories"
puts "-" * 60


puts
puts "Seeding ended"
puts "*" * 60
