require 'faker'

# Data used for seeding
users_data = [
  {
    email: "ellyn@gmail.com",
    password: "123456",
    first_name: "Ellyn",
    last_name: "Bouscasse",
    address: "Carrer de Tuset, 13, Barcelona",
    phone_number: Faker::PhoneNumber.phone_number
  },

  {
    email: "avalon@gmail.com",
    password: "123456",
    first_name: "Avalon",
    last_name: "van der Horst",
    address: "Carrer de Tuset, 8, Barcelona",
    phone_number: Faker::PhoneNumber.phone_number
  },

  {
    email: "alex@gmail.com",
    password: "123456",
    first_name: "Alexander",
    last_name: "Dubovoy",
    address: "Carrer de París, 193, Barcelona",
    phone_number: Faker::PhoneNumber.phone_number
  },

  {
    email: "gus@gmail.com",
    password: "123456",
    first_name: "Gus",
    last_name: "De Vita",
    address: "Carrer d'Aragó, 141, Barcelona",
    phone_number: Faker::PhoneNumber.phone_number
  },

  {
    email: "prima@gmail.com",
    password: "123456",
    first_name: "Gus",
    last_name: "Aulia Gusta",
    address: "Passatge de Domingo, 3, Barcelona",
    phone_number: Faker::PhoneNumber.phone_number
  },

  {
    email: "louis@gmail.com",
    password: "123456",
    first_name: "Louis",
    last_name: "Darche",
    address: "Carrer dels Almogàvers, 122, Barcelona",
    phone_number: Faker::PhoneNumber.phone_number
  },

  {
    email: "valerie@gmail.com",
    password: "123456",
    first_name: "Valerie",
    last_name: "Schraauwers",
    address: "Carrer del Rosselló, 217, Barcelona",
    phone_number: Faker::PhoneNumber.phone_number
  },

  {
    email: "claire@gmail.com",
    password: "123456",
    first_name: "Claire",
    last_name: "Gautier",
    address: "Carrer de Provença, 171, Barcelona",
    phone_number: Faker::PhoneNumber.phone_number
  },

  {
    email: "emi@gmail.com",
    password: "123456",
    first_name: "Emiliano",
    last_name: "Dogaru",
    address: "Carrer d'Arizala, 57, Barcelona",
    phone_number: Faker::PhoneNumber.phone_number
  },

  {
    email: "sang@gmail.com",
    password: "123456",
    first_name: "Sangsoo",
    last_name: "Ra",
    address: "Plaça de Catalunya, Barcelona",
    phone_number: Faker::PhoneNumber.phone_number
  },
  {
    email: "abder@gmail.com",
    password: "123456",
    first_name: "Abderrahim",
    last_name: "Nadifi",
    address: "Carrer d'en Grassot, 101, Barcelona",
    phone_number: Faker::PhoneNumber.phone_number
  },

  {
    email: "leon@gmail.com",
    password: "123456",
    first_name: "Leon",
    last_name: "Ellerbrock",
    address: "Carrer de Calvet, 58, Barcelona",
    phone_number: Faker::PhoneNumber.phone_number
  }

]

fixers_data = [
  {
    start_time: Time.parse("08:00"),
    end_time: Time.parse("20:00"),
    unit_price: 10
  },

  {
    start_time: Time.parse("09:00"),
    end_time: Time.parse("18:00"),
    unit_price: 20
  },

  {
    start_time: Time.parse("10:00"),
    end_time: Time.parse("19:00"),
    unit_price: 15
  },

  {
    start_time: Time.parse("09:00"),
    end_time: Time.parse("14:00"),
    unit_price: 20
  },

  {
    start_time: Time.parse("16:00"),
    end_time: Time.parse("21:00"),
    unit_price: 12
  },

  {
    start_time: Time.parse("10:00"),
    end_time: Time.parse("18:00"),
    unit_price: 18
  },

  {
    start_time: Time.parse("14:00"),
    end_time: Time.parse("18:00"),
    unit_price: 11
  },

  {
    start_time: Time.parse("16:00"),
    end_time: Time.parse("20:00"),
    unit_price: 15
  }
]

categories_data = [
  {
    name: "Washing Machine",
    problems: [
      "Washing machine won't fill with water",
      "The drum doesn't turn",
      "Washing machine stops mid-cycle",
      "Washing machine is noisy",
      "Water not draining from washing machine",
      "Clothes are not cleaned"]
  },

  {
    name: "Cooker" ,
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
    problems: [
      "Cleaning is not working",
      "Dishwasher doesn't start",
      "Dishwasher makes noise",
      "Water doesn't drain",
      "Water leaks from Dishwasher",
      "Door Doesn't Latch"
    ]
  },

  { name: "Fridge",
    problems: [
      "Water leaking on the floor",
      "Freezer isn't cold enough",
      "Unit is cycling too often",
      "Fresh compartment is warming up",
      "Sheet of ice on the freezer floor",
      "Fridge is freezing food"]
  },

  {
    name: "Microwave Oven",
    problems: [
      "Does not heat",
      "Microwave runs and then stops",
      "Buttons do not work.",
      "Microwave plate does not spin",
      "Microwave light-bulb does not turn on",
      "Sparking inside microwave"
    ]
  },

  {
    name: "Light",
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
    problems: [
      "Doesn't turn on",
      "Doesn't heat the water enough",
      "Leaks water",
      "Water gets too hot"
    ]
  },

  {
    name: "Shower",
    problems: [
      "Low water pressure.",
      "Infrequent bursts of scalding hot water.",
      "Blown pressure relief device",
      "Sparking inside microwave",
      "Noisy shower",
      "Water is leaking from the wall"
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
  },

  { name: "Sink" ,
    problems: [
      "Clogged kitchen sink",
      "Low water pressure.",
      "Leaky kitchen faucet",
      "Clogged drain lines",
      "Hot water is not working",
      "Faucet is broken"]
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
User.first(8).each do |user|
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
