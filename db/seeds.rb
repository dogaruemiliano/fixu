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
    first_name: "Sangsoo",
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
    unit_price: 20
  },

  {
    start_time: Time.parse("10:00"),
    end_time: Time.parse("19:00"),
    unit_price: 20
  }
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

Appointment.destroy_all
puts "Destroyed all Appointment models"

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
puts "Creating fixers"
puts "-" * 30

data_index = 0 # Helper to iterate throgh the fixers_data
User.first(3).each do |user|
  fixer = Fixer.new(fixers_data[data_index])
  fixer.user = user
  fixer.save!
  data_index += 1
  puts "\ttCreated fixer from user with email: #{fixer.user.email}"
end
puts "-" * 30
puts "Done creating fixer"
puts "-" * 60
puts "=" * 60
puts "-" * 60

puts "Creating categories"
puts "-" * 30

categories_data = [
  {
    name: "Washing Machine",
    photo_id: "washing_machine",
    problems: [ "The machine won't fill with water",
      "The drum doesn't turn",
      "The machine stops mid-cycle",
      "The washing machine is noisy",
      "Water not draining from washing machine",
      "The washing machine won't spin"
    ]
  },

  {
    name: "Cooker" ,
    photo_id: "cooker",
    problems: [
      "One or more elements do not heat up",
      "Thermostat trips when using grill",
      "No light",
      "Noisy fan",
      "Sparks or burning smell",
      "No functions",
      "My oven door does not close properly"
    ]
  },

  {
    name: "Dishwasher",
    photo_id: "dishwasher",
    problems: [
      "Cleaning is not working",
      "Dishwasher doesn't start",
      "Dishwasher makes noise",
      "Water doesn't drain",
      "Water leaks from Dishwasher",
      "Door Doesn't Latch"
    ]
  },

  {
    name: "Fridge",
    photo_id: "fridge",
    problems: [
      "Water Leaking on the Floor",
      "Freezer Isn't Cold Enough.",
      "Unit is Cycling Too Often",
      "Fresh Compartment Is Warming Up",
      "Sheet of Ice on the Freezer Floor",
      "Refrigerator is Freezing Food"
    ]
  },

  {
    name: "Microwave Oven",
    photo_id: "microwave_one",
    problems: [
      "Microwave does not heat",
      "Microwave runs and then stops",
      "Microwave buttons do not work.",
      "Microwave plate does not spin",
      "Microwave light-bulb does not turn on",
      "Sparking inside microwave"
    ]
  },

  {
    name: "Light",
    photo_id: "light",
    problems: [
      "Don't turn on",
      "Get too hot",
      "The fuse pops often",
      "Inconsistent intensity",
      "Swich doesn't work",
      "Popped light-bulb"
    ]
  },

  {
    name: "Boiler",
    photo_id: "boiler",
    problems: [
      "Doesn't turn on",
      "Doesn't heat the water enough",
      "Leaks water",
      "Water gets too hot"
    ]
  },

  {
    name: "Shower",
    photo_id: "shower",
    problems: [
      "Low water pressure.",
      "Infrequent bursts of scalding hot water.",
      "Blown pressure relief device",
      "Noisy shower",
      "Water is too cold",
      "Water is leaking from the wall"
    ]
  },

  {
    name: "Sink",
    photo_id: "sink",
    problems: [
      "Clogged Kitchen Sink",
      "Low Water Pressure.",
      "Leaky Kitchen Faucet",
      "Clogged Drain Lines",
      "Hot water is not working",
      "Faucet is broken"
    ]
  },

  {
    name: "Toilet",
    photo_id: "toilet",
    problems: [
      "Leaks wateer",
      "Doesn't flush",
      "Leaks smell",
      "Tank filling doesn't stop",
    ]
  }


]

categories_data.each do |category_data|
  category = Category.create(name: category_data[:name])
  puts "Created category with name: #{category.name}"
  puts "\tCreating problems"
  category_data[:problems].each do |content|
    Problem.create!(content: content, duration: rand(1..5), category: category)
    puts "\t\tCreated problem with content: #{content}"
  end
  puts "\tDone creating problems"
  puts
end

puts "-" * 30
puts "Done creating categories"
puts "-" * 60




puts "=" * 60
puts "Seeding ended"
puts "*" * 60
