# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all
City.destroy_all

50.times do
  city = City.create!(
    city_name: Faker::Address.city
  )
  dog = Dog.create!(
    name: Faker::Name.first_name,
    age: Faker::Number.between(from: 1, to: 15),
    city: City.all.sample
  )
  dogsitter = Dogsitter.create!(
    name: Faker::Name.first_name,
    age: Faker::Number.between(from: 16, to: 50),
    city: City.all.sample
  )
  stroll = Stroll.create!(
    date: Faker::Date.forward(days: 30),
    dog: Dog.all.sample,
    dogsitter: Dogsitter.all.sample
  )
end