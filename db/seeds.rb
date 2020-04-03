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
    email: "louise@gmail.com",
    password: "123456",
    first_name: "Louise",
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
    email: "fanny@gmail.com",
    password: "123456",
    first_name: "Fanny",
    last_name: "Rojon",
    address: "Carrer de Lincoln, 15, Barcelona",
    phone_number: Faker::PhoneNumber.phone_number,
    lewagon_username: "fanny-rojon"
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
    price_cents: 1000
  },

  {
    start_time: Time.parse("09:00"),
    end_time: Time.parse("18:00"),
    price_cents: 2000
  },

  {
    start_time: Time.parse("10:00"),
    end_time: Time.parse("19:00"),
    price_cents: 1500
  },

  {
    start_time: Time.parse("09:00"),
    end_time: Time.parse("14:00"),
    price_cents: 2000
  },

  {
    start_time: Time.parse("16:00"),
    end_time: Time.parse("21:00"),
    price_cents: 1200
  },

  {
    start_time: Time.parse("10:00"),
    end_time: Time.parse("18:00"),
    price_cents: 1800
  },

  {
    start_time: Time.parse("14:00"),
    end_time: Time.parse("18:00"),
    price_cents: 1100
  },

  {
    start_time: Time.parse("16:00"),
    end_time: Time.parse("20:00"),
    price_cents: 1500
  },

  {
    start_time: Time.parse("09:00"),
    end_time: Time.parse("18:00"),
    price_cents: 1000
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
    problem_id: [1, 4, 7, 10, 16, 17, 18, 20, 25, 27, 29, 30, 31, 32, 33, 41, 42, 50, 51, 52, 56, 57, 58, 60]
  },

  { fixer_id: 2,
    problem_id: [1, 2, 3, 4, 6, 8, 10, 11, 12, 17, 20, 25, 26, 27, 32, 33, 34, 35, 36, 40, 42, 50, 51, 52, 53, 59]
  },

  { fixer_id: 3,
    problem_id: [2, 5, 6, 9, 11, 13, 14, 15, 17, 19, 21, 22, 23, 24, 28, 37, 38, 39, 41, 43, 44, 45, 46, 47, 54, 59]
  },

  { fixer_id: 4,
    problem_id: [3, 6, 7, 8, 9, 11, 12, 13, 16, 21, 22, 24, 27, 32, 33, 34, 35, 36, 40, 41, 48, 49, 54, 55, 58]
  },

  { fixer_id: 5,
    problem_id: [1, 2, 3, 4, 5, 6, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 55, 56, 57, 58, 59, 60]
  },

  { fixer_id: 6,
    problem_id: [7, 8, 9, 10, 11, 12, 17, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42]
  },

  { fixer_id: 7,
    problem_id: [3, 5, 7, 8, 9, 12, 15, 16, 17, 19, 21, 22, 24, 37, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54]
  },

  { fixer_id: 8,
    problem_id: [2, 4, 5, 10, 13, 14, 15, 17, 18, 19, 20, 23, 26, 28, 29, 30, 31, 37, 38, 39, 43, 49, 50, 53, 59]
  },

  { fixer_id: 9,
    problem_id: [4, 7, 14, 17, 18, 23, 25, 26, 28, 29, 30, 31, 34, 35, 36, 43, 44, 45, 46, 47, 48, 55, 56, 57, 60]
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
User.first(9).each do |user|
  fixer = Fixer.new(fixers_data[data_index])
  fixer.user = user
  fixer.save!
  data_index += 1
  puts "\tCreated fixer from user with email: #{fixer.user.email}"
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

puts "Creating appointments"
puts "-" * 30

Appointment.create(time: DateTime.new(2020, 02, 12, 12, 00, 0), fixer_id: 1, user_id: 10, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 1, address: "Carrer d'Arizala, 57, Barcelona", latitude: 41.3780977, longitude: 2.123918, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 02, 13, 15, 00, 0), fixer_id: 2, user_id: 11, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 2, address: "Plaça de Catalunya, Barcelona", latitude: 41.3874888, longitude: 2.1688077, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 02, 14, 18, 00, 0), fixer_id: 3, user_id: 12, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 5, address: "Plaça de Catalunya, Barcelona", latitude: 41.3874888, longitude: 2.1688077, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 02, 15, 14, 00, 0), fixer_id: 4, user_id: 12, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 6, address: "Carrer d'en Grassot, 101, Barcelona", latitude: 41.4039474, longitude: 2.1669651, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 02, 15, 16, 00, 0), fixer_id: 5, user_id: 11, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 13, address: "Carrer d'Arizala, 57, Barcelona", latitude: 41.3780977, longitude: 2.123918, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 02, 16, 13, 00, 0), fixer_id: 6, user_id: 10, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 12, address: "Carrer d'en Grassot, 101, Barcelona", latitude: 41.4039474, longitude: 2.1669651, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 02, 16, 17, 00, 0), fixer_id: 7, user_id: 11, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 7, address: "Plaça de Catalunya, Barcelona", latitude: 41.3874888, longitude: 2.1688077, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 02, 18, 12, 30, 0), fixer_id: 8, user_id: 10, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 15, address: "Carrer d'Arizala, 57, Barcelona", latitude: 41.3780977, longitude: 2.123918, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 02, 18, 15, 00, 0), fixer_id: 9, user_id: 12, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 4, address: "Carrer d'en Grassot, 101, Barcelona", latitude: 41.4039474, longitude: 2.1669651, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 02, 19, 19, 30, 0), fixer_id: 1, user_id: 12, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 17, address: "Carrer d'en Grassot, 101, Barcelona", latitude: 41.4039474, longitude: 2.1669651, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 02, 20, 15, 20, 0), fixer_id: 2, user_id: 10, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 25, address: "Carrer d'Arizala, 57, Barcelona", latitude: 41.3780977, longitude: 2.123918, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 02, 20, 18, 00, 0), fixer_id: 3, user_id: 11, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 21, address: "Plaça de Catalunya, Barcelona", latitude: 41.3874888, longitude: 2.1688077, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 02, 21, 9, 40, 0), fixer_id: 4, user_id: 11, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 16, address: "Plaça de Catalunya, Barcelona", latitude: 41.3874888, longitude: 2.1688077, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 02, 22, 8, 10, 0), fixer_id: 5, user_id: 12, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 23, address: "Carrer d'en Grassot, 101, Barcelona", latitude: 41.4039474, longitude: 2.1669651, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 02, 22, 14, 00, 0), fixer_id: 6, user_id: 10, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 33, address: "Carrer d'Arizala, 57, Barcelona", latitude: 41.3780977, longitude: 2.123918, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 02, 26, 12, 00, 0), fixer_id: 7, user_id: 12, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 22, address: "Carrer d'en Grassot, 101, Barcelona", latitude: 41.4039474, longitude: 2.1669651, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 03, 1, 16, 00, 0), fixer_id: 8, user_id: 11, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 18, address: "Plaça de Catalunya, Barcelona", latitude: 41.3874888, longitude: 2.1688077, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 03, 2, 17, 00, 0), fixer_id: 9, user_id: 10, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 26, address: "Carrer d'Arizala, 57, Barcelona", latitude: 41.3780977, longitude: 2.123918, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 03, 3, 12, 00, 0), fixer_id: 1, user_id: 11, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 27, address: "Plaça de Catalunya, Barcelona", latitude: 41.3874888, longitude: 2.1688077, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 03, 6, 13, 00, 0), fixer_id: 2, user_id: 10, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 11, address: "Carrer d'Arizala, 57, Barcelona", latitude: 41.3780977, longitude: 2.123918, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 03, 8, 15, 00, 0), fixer_id: 3, user_id: 12, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 14, address: "Carrer d'en Grassot, 101, Barcelona", latitude: 41.4039474, longitude: 2.1669651, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 03, 11, 12, 00, 0), fixer_id: 4, user_id: 11, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 24, address: "Plaça de Catalunya, Barcelona", latitude: 41.3874888, longitude: 2.1688077, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 03, 12, 10, 00, 0), fixer_id: 5, user_id: 12, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 23, address: "Carrer d'en Grassot, 101, Barcelona", latitude: 41.4039474, longitude: 2.1669651, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 03, 12, 15, 20, 0), fixer_id: 6, user_id: 10, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 28, address: "Carrer d'Arizala, 57, Barcelona", latitude: 41.3780977, longitude: 2.123918, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 03, 15, 12, 50, 0), fixer_id: 7, user_id: 11, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 37, address: "Plaça de Catalunya, Barcelona", latitude: 41.3874888, longitude: 2.1688077, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 03, 17, 13, 00, 0), fixer_id: 8, user_id: 10, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 30, address: "Carrer d'Arizala, 57, Barcelona", latitude: 41.3780977, longitude: 2.123918, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 03, 18, 16, 00, 0), fixer_id: 9, user_id: 12, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 31, address: "Carrer d'en Grassot, 101, Barcelona", latitude: 41.4039474, longitude: 2.1669651, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 03, 19, 12, 40, 0), fixer_id: 1, user_id: 12, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 33, address: "Carrer d'en Grassot, 101, Barcelona", latitude: 41.4039474, longitude: 2.1669651, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 03, 20, 16, 50, 0), fixer_id: 2, user_id: 10, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 34, address: "Carrer d'Arizala, 57, Barcelona", latitude: 41.3780977, longitude: 2.123918, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 03, 21, 9, 30, 0), fixer_id: 3, user_id: 11, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 38, address: "Plaça de Catalunya, Barcelona", latitude:  41.3874888, longitude: 2.1688077, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 03, 21, 12, 20, 0), fixer_id: 4, user_id: 11, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 40, address: "Plaça de Catalunya, Barcelona", latitude:  41.3874888, longitude: 2.1688077, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 03, 22, 14, 30, 0), fixer_id: 5, user_id: 12, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 55, address: "Carrer d'en Grassot, 101, Barcelona", latitude: 41.4039474, longitude: 2.1669651, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 03, 23, 10, 20, 0), fixer_id: 6, user_id: 10, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 41, address: "Carrer d'Arizala, 57, Barcelona", latitude: 41.3780977, longitude: 2.123918, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 03, 23, 14, 50, 0), fixer_id: 7, user_id: 10, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 43, address: "Carrer d'Arizala, 57, Barcelona", latitude: 41.3780977, longitude: 2.123918, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 03, 25, 15, 20, 0), fixer_id: 8, user_id: 11, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 49, address: "Plaça de Catalunya, Barcelona", latitude: 41.3874888, longitude: 2.1688077, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 03, 25, 17, 00, 0), fixer_id: 9, user_id: 12, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 44, address: "Carrer d'en Grassot, 101, Barcelona", latitude: 41.4039474, longitude: 2.1669651, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 03, 26, 18, 00, 0), fixer_id: 1, user_id: 11, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 50, address: "Plaça de Catalunya, Barcelona", latitude: 41.3874888, longitude: 2.1688077, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 03, 26, 19, 00, 0), fixer_id: 2, user_id: 12, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 51, address: "Carrer d'en Grassot, 101, Barcelona", latitude: 41.4039474, longitude: 2.1669651, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 03, 28, 12, 00, 0), fixer_id: 3, user_id: 10, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 45, address: "Carrer d'Arizala, 57, Barcelona", latitude: 41.3780977, longitude: 2.123918, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 03, 29, 13, 00, 0), fixer_id: 4, user_id: 12, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 54, address: "Carrer d'en Grassot, 101, Barcelona", latitude: 41.4039474, longitude: 2.1669651, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 03, 30, 15, 00, 0), fixer_id: 5, user_id: 10, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 56, address: "Carrer d'Arizala, 57, Barcelona", latitude: 41.3780977, longitude: 2.123918, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 03, 31, 9, 00, 0), fixer_id: 6, user_id: 11, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 57, address: "Plaça de Catalunya, Barcelona", latitude: 41.3874888, longitude: 2.1688077, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 03, 31, 17, 30, 0), fixer_id: 7, user_id: 10, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 19, address: "Carrer d'Arizala, 57, Barcelona", latitude: 41.3780977, longitude: 2.123918, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 04, 1, 12, 30, 0), fixer_id: 8, user_id: 12, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 59, address: "Carrer d'en Grassot, 101, Barcelona", latitude: 41.4039474, longitude: 2.1669651, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 04, 1, 12, 30, 0), fixer_id: 9, user_id: 11, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 60, address: "Plaça de Catalunya, Barcelona", latitude: 41.3874888, longitude: 2.1688077, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 04, 2, 12, 30, 0), fixer_id: 1, user_id: 10, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 19, address: "Carrer d'Arizala, 57, Barcelona", latitude: 41.3780977, longitude: 2.123918, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 04, 2, 15, 30, 0), fixer_id: 2, user_id: 12, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 59, address: "Carrer d'en Grassot, 101, Barcelona", latitude: 41.4039474, longitude: 2.1669651, amount_cents: 5000)
Appointment.create(time: DateTime.new(2020, 04, 2, 11, 30, 0), fixer_id: 3, user_id: 11, status: "confirmed", created_at: DateTime.new(2020, 1, 1, 00, 00, 0), updated_at: DateTime.new(2020, 1, 1, 00, 00, 0), problem_id: 60, address: "Plaça de Catalunya, Barcelona", latitude: 41.3874888, longitude: 2.1688077, amount_cents: 5000)


puts "-" * 30
puts "Done creating appointments"
puts "-" * 60

puts "Creating reviews"
puts "-" * 30

puts "-" * 30
puts "Done creating reviews"
puts "-" * 60

Review.create(rating: 4, content: "Problem fixed but late on time", appointment_id: 1)
Review.create(rating: 4, content: "Great experience but little bit expensive", appointment_id: 2)
Review.create(rating: 5, content: "Perfect!!", appointment_id: 3)
Review.create(rating: 4, content: "It was okay", appointment_id: 4)
Review.create(rating: 3, content: "Too expensive!", appointment_id: 5)
Review.create(rating: 2, content: "Nothing fixed and charged money", appointment_id: 6)
Review.create(rating: 5, content: "Superb!!", appointment_id: 7)
Review.create(rating: 4, content: "Would hire this fixer again!", appointment_id: 8)
Review.create(rating: 3, content: "Problem solved!", appointment_id: 9)
Review.create(rating: 3, content: "20 minutes late for the appointment", appointment_id: 10)
Review.create(rating: 5, content: "Highly recommended", appointment_id: 11)
Review.create(rating: 4, content: "Best experience", appointment_id: 12)
Review.create(rating: 3, content: "Poor performance", appointment_id: 13)
Review.create(rating: 4, content: "No more headache!", appointment_id: 14)
Review.create(rating: 2, content: "Fixer was late and made problem worse", appointment_id: 15)
Review.create(rating: 5, content: "Best fixer I've ever met", appointment_id: 16)
Review.create(rating: 3, content: "Took too much time", appointment_id: 17)
Review.create(rating: 5, content: "Just so good", appointment_id: 18)
Review.create(rating: 5, content: "Coooool!", appointment_id: 19)
Review.create(rating: 5, content: "Best fixer Avalon!", appointment_id: 20)
Review.create(rating: 3, content: "Didn't like the service", appointment_id: 21)
Review.create(rating: 3, content: "At least problem is solved", appointment_id: 22)
Review.create(rating: 4, content: "Cool experience", appointment_id: 23)
Review.create(rating: 5, content: "No worries anymore!", appointment_id: 24)
Review.create(rating: 5, content: "Definitely repeating again!!", appointment_id: 25)
Review.create(rating: 3, content: "Okish", appointment_id: 26)
Review.create(rating: 3, content: "So so", appointment_id: 27)
Review.create(rating: 4, content: "Recommended!", appointment_id: 28)
Review.create(rating: 5, content: "Good service, great smile", appointment_id: 29)
Review.create(rating: 3, content: "Overpriced!", appointment_id: 30)
Review.create(rating: 3, content: "Not on time but problem fixed", appointment_id: 31)
Review.create(rating: 4, content: "Great fixer", appointment_id: 32)
Review.create(rating: 1, content: "Didn't show up on time and ignoring my call", appointment_id: 33)
Review.create(rating: 3, content: "Problem not completely fixed", appointment_id: 34)
Review.create(rating: 5, content: "Sooo coool!", appointment_id: 35)
Review.create(rating: 3, content: "Took more time than I was told", appointment_id: 36)
Review.create(rating: 4, content: "Lovely French accent!!", appointment_id: 37)
Review.create(rating: 5, content: "Couldn't been better", appointment_id: 38)
Review.create(rating: 5, content: "All fixed!", appointment_id: 39)
Review.create(rating: 4, content: "Fixed everything!", appointment_id: 40)
Review.create(rating: 4, content: "Sooo happy!", appointment_id: 41)
Review.create(rating: 3, content: "Charging too much for such a service", appointment_id: 42)
Review.create(rating: 4, content: "Nothing to complain", appointment_id: 43)
Review.create(rating: 4, content: "Satisfying", appointment_id: 44)
Review.create(rating: 5, content: "Fanny is the best!", appointment_id: 45)


puts "=" * 60
puts "Seeding ended"
puts "*" * 60
