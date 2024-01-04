# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Seeding started...'

# Seed data for Plant
people_seed_data = [
  { name: 'John Doe', email: 'john.doe@example.com' },
  { name: 'Jane Smith', email: 'jane.smith@example.com' },
  { name: 'Bob Johnson', email: 'bob.johnson@example.com' },
]

# people_seed_data.each do |person_data|
#   Person.create(person_data)
# end

people = Person.create!(people_seed_data)

# Seed data for Plant
plant_seed_data = [
  { name: 'Sunflower', person: people.sample },
  { name: 'Fern', person: people.sample },
  { name: 'Rose', person: people.sample },
]

Plant.create!(plant_seed_data)

puts 'Seed data successfully inserted!'
