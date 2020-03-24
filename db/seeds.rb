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

fixers_data = [
  {
    start_time: Time.parse("8:00"),
    end_time: Time.parse("20:00"),
    unit_price: 10
  },

  {
    start_time: Time.parse("9:00"),
    end_time: Time.parse("18:00"),
    unit_price: 10
  },

  {
    start_time: Time.parse("10:00"),
    end_time: Time.parse("19:00"),
    unit_price: 10
  }
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
puts "=" * 60

puts "-" * 60
puts "Destroying models"
puts "-" * 30

User.destroy_all
puts "Destroyed all User models"

Category.destroy_all
puts "Destroyed all Category models"

puts "-" * 30
puts "Destroyed all previous models"
puts "-" * 60

puts "=" * 60

puts "-" * 60
puts "Creating users"
puts "-" * 30

users_data.each do |user_data|
  user = User.create!(user_data)
  puts "Created user with email: #{user.email}"
end
puts "-" * 30
puts "Done creating users"
puts "-" * 60
puts "=" * 60
puts "-" * 60
puts "Creating fixer"
puts "-" * 30

data_index = 0 # Helper to iterate throgh the fixers_data
User.first(3).each do |user|
  fixer = Fixer.new(fixers_data[data_index])
  fixer.user = user
  fixer.save!
  puts "Created fixer from user with email: #{fixer.user.email}"
end
puts "-" * 30
puts "Done creating fixer"
puts "-" * 60
puts "=" * 60
puts "-" * 60
puts "Creating categories"
puts "-" * 30

categories_data.each do |category_data|
  category = Category.create!(category_data)
  puts "Created catetgory with name: #{category.name}"
end

puts "-" * 30
puts "Done creating categories"
puts "-" * 60


puts "=" * 60
puts "Seeding ended"
puts "*" * 60
