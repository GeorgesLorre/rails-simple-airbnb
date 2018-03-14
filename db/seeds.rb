# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# name, as a string
# address, as a string
# description, as a text
# price_per_night, as an integer
# number_of_guests, as an integer
puts 'dropping'
Flat.destroy_all

puts 'seeding'
10.times do
  h = {
    name: Faker::Coffee.blend_name,
    address: Faker::Fallout.location,
    description: Faker::Hipster.paragraph,
    price_per_night: rand(200..5000),
    number_of_guests: rand(1..12)
  }
  Flat.create!(h)
end

puts 'done'
