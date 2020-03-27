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
  }
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
    unit_price: 15
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
  data_index += 1
  puts "Created fixer from user with email: #{fixer.user.email}"
end
puts "-" * 30
puts "Done creating fixer"
puts "-" * 60
puts "=" * 60
puts "-" * 60

puts "Creating categories"
puts "-" * 30
categories_data = [
  { name: "Dishwasher",
    problems: [
      "Cleaning is not working",
      "Dishwasher doesn't start",
      "Dishwasher makes noise",
      "Water doesn't drain",
      "Water leaks from dishwasher",
      "Door doesn't latch"]
    },
  { name: "Fridge",
    problems: [
      "Water leaking on the floor",
      "Freezer isn't cold Enough",
      "Unit is cycling too often",
      "Fresh compartment is warming up",
      "Sheet of ice on the freezer floor",
      "Fridge is freezing food"]
    },
  { name: "Washing Machine",
    problems: [
      "Washing machine won't fill with water",
      "The drum doesn't turn",
      "Washing machine stops mid-cycle",
      "Washing machine is noisy",
      "Water not draining from washing machine",
      "Clothes are not cleaned"]
    },
  { name: "Microwave Oven",
    problems: [
      "Does not heat",
      "Microwave runs and then stops",
      "Buttons do not work.",
      "Microwave plate does not spin",
      "Microwave light-bulb does not turn on",
      "Sparking inside microwave",]
    },
  { name: "Shower" ,
    problems: [
      "Low water pressure",
      "Infrequent bursts of scalding hot water",
      "Noisy shower",
      "Blown pressure relief device",
      "Water is too cold",
      "Water is leaking from the wall"]
    },
  { name: "Sink" ,
    problems: [
      "Clogged kitchen sink",
      "Low water pressure.",
      "Leaky kitchen faucet",
      "Clogged drain lines",
      "Hot water is not working",
      "Faucet is broken"]
    },
  { name: "Oven" ,
    problems: [
      "Does not heat up",
      "Oven constantly overheats",
      "Oven door does not close properly",
      "Oven burns kitchen units",
      "Oven emits loud sounds",
      "Oven fan continues to run"]
    },
  { name: "Cooker" ,
    problems: [
      "One or more elements do not heat up",
      "No light",
      "Thermostat trips when using grill",
      "Noisy fan",
      "Sparks or burning smell",
      "Not functioning"]
    }
]

categories_data.each do |category_data|
  category = Category.create!(name: category_data[:name])
  puts "Created catetgory with name: #{category.name}"
  puts "-" * 30
  puts "Creating problems for category: #{category.name}"
  category_data[:problems].each do |content|
    problem = Problem.create!(content: content, duration: rand(1..5), category: category)
    problem.save!
  end
  puts "-" * 30
  puts "Done creating problems for category: #{category.name}"
end

puts "-" * 30
puts "Done creating categories"
puts "-" * 60




puts "=" * 60
puts "Seeding ended"
puts "*" * 60
