require 'faker'

# Data used for seeding
users_data = [
  {
    email: "ellyn@gmail.com",
    password: "123456",
    first_name: "Ellyn",
    last_name: "Bouscasse",
    address: "Carrer de Tuset, 13, Barcelona",
    phone_number: Faker::PhoneNumber.phone_number,
    lewagon_username: "EllynBsc"
  },

  {
    email: "avalon@gmail.com",
    password: "123456",
    first_name: "Avalon",
    last_name: "van der Horst",
    address: "Carrer de Tuset, 8, Barcelona",
    phone_number: Faker::PhoneNumber.phone_number,
    lewagon_username: "Avalonvdhorst"
  },

  {
    email: "alexander@gmail.com",
    password: "123456",
    first_name: "Alexander",
    last_name: "Dubovoy",
    address: "Carrer de París, 193, Barcelona",
    phone_number: Faker::PhoneNumber.phone_number,
    lewagon_username: "ajdubovoy"
  },

  {
    email: "gus@gmail.com",
    password: "123456",
    first_name: "Gus",
    last_name: "De Vita",
    address: "Carrer d'Aragó, 141, Barcelona",
    phone_number: Faker::PhoneNumber.phone_number,
    lewagon_username: "devitagus"
  },

  {
    email: "prima@gmail.com",
    password: "123456",
    first_name: "Prima",
    last_name: "Aulia Gusta",
    address: "Passatge de Domingo, 3, Barcelona",
    phone_number: Faker::PhoneNumber.phone_number,
    lewagon_username: "primaulia"
  },

  {
    email: "louis@gmail.com",
    password: "123456",
    first_name: "Louis",
    last_name: "Darche",
    address: "Carrer dels Almogàvers, 122, Barcelona",
    phone_number: Faker::PhoneNumber.phone_number,
    lewagon_username: "LouiseDarche"
  },

  {
    email: "valerie@gmail.com",
    password: "123456",
    first_name: "Valerie",
    last_name: "Schraauwers",
    address: "Carrer del Rosselló, 217, Barcelona",
    phone_number: Faker::PhoneNumber.phone_number,
    lewagon_username: "valerieschraauwers"
  },

  {
    email: "claire@gmail.com",
    password: "123456",
    first_name: "Claire",
    last_name: "Gautier",
    address: "Carrer de Provença, 171, Barcelona",
    phone_number: Faker::PhoneNumber.phone_number,
    lewagon_username: "claire-gtr"
  },

  {
    email: "emi@gmail.com",
    password: "123456",
    first_name: "Emiliano",
    last_name: "Dogaru",
    address: "Carrer d'Arizala, 57, Barcelona",
    phone_number: Faker::PhoneNumber.phone_number,
    lewagon_username: "dogaruemiliano"
  },

  {
    email: "sang@gmail.com",
    password: "123456",
    first_name: "Sangsoo",
    last_name: "Ra",
    address: "Plaça de Catalunya, Barcelona",
    phone_number: Faker::PhoneNumber.phone_number,
    lewagon_username: "sangsoora"
  },
  {
    email: "abder@gmail.com",
    password: "123456",
    first_name: "Abderrahim",
    last_name: "Nadifi",
    address: "Carrer d'en Grassot, 101, Barcelona",
    phone_number: Faker::PhoneNumber.phone_number,
    lewagon_username: "Abder007"
  },

  {
    email: "leon@gmail.com",
    password: "123456",
    first_name: "Leon",
    last_name: "Ellerbrock",
    address: "Carrer de Calvet, 58, Barcelona",
    phone_number: Faker::PhoneNumber.phone_number,
    lewagon_username: "leonellerbrock"
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
      "Noisy fan",
      "Sparks or burning smell",
      "Not functioning",
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
      "Water leaks from dishwasher",
      "Door doesn't latch"
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
      "Buttons do not work",
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
      "Water gets too hot",
      "Banging, whistling or gurgling noises",
      "Boiler switching itself off"
    ]
  },

  {
    name: "Shower",
    problems: [
      "Low water pressure.",
      "Infrequent bursts of scalding hot water.",
      "Blown pressure relief device",
      "Noisy shower",
      "Leaky shower faucet",
      "Bad smells"
    ]
  },

  {
    name: "Toilet",
    photo_id: "toilet",
    problems: [
      "Leaks water",
      "Doesn't flush",
      "Broken tank",
      "Tank filling doesn't stop",
      "Sewer line clog",
      "Dripping sound with repetitive tank filling"
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

specialities_data = [
  { fixer_id: 1,
    problem_id: [1, 4, 7, 9, 10, 16, 17, 18, 20, 25, 27, 29, 30, 31, 32, 33, 41, 42, 50, 52, 56, 57, 58, 60]
  },
  { fixer_id: 2,
    problem_id: [1, 2, 3, 4, 6, 8, 10, 11, 12, 20, 25, 26, 27, 32, 33, 34, 35, 36, 40, 42, 50, 51, 52, 53, 59]
  },
  { fixer_id: 3,
    problem_id: [1, 2, 3, 5, 6, 9, 11, 13, 14, 15, 19, 21, 22, 23, 24, 28, 37, 38, 39, 41, 43, 44, 45, 46, 47]
  },
  { fixer_id: 4,
    problem_id: [3, 6, 7, 8, 9, 11, 12, 13, 16, 21, 22, 24, 27, 32, 33, 34, 35, 36, 40, 41, 48, 49, 54, 55, 58]
  },
  { fixer_id: 5,
    problem_id: [1, 2, 3, 4, 5, 6, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 55, 56, 57, 58, 59, 60]
  },
  { fixer_id: 6,
    problem_id: [7, 8, 9, 10, 11, 12, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42]
  },
  { fixer_id: 7,
    problem_id: [3, 5, 7, 8, 9, 12, 15, 16, 19, 21, 22, 24, 27, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54]
  },
  { fixer_id: 8,
    problem_id: [2, 4, 5, 8, 10, 13, 14, 15, 17, 18, 19, 20, 23, 26, 28, 29, 30, 31, 37, 38, 39, 43, 49, 50, 59]
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


puts "Creating specialities"
puts "-" * 30


specialities_data.each do |speciality_data|
  speciality_data[:problem_id].each do |problem_id|
    speciality = Speciality.create(fixer_id: speciality_data[:fixer_id], problem_id: problem_id)
    puts "Created speciality"
  end
end

puts "-" * 30
puts "Done creating specialities"
puts "-" * 60

puts "=" * 60
puts "Seeding ended"
puts "*" * 60
