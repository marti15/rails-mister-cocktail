require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all

puts 'Creating ingredients...'
Ingredient.create(name: 'lemon')
Ingredient.create(name: 'ice')
Ingredient.create(name: 'mint leaves')
Ingredient.create(name: "Peppermint schnapps")
Ingredient.create(name: "Creme de Cassis")
Ingredient.create(name: "Jack Daniels")

puts 'Creating cocktails...'
30.times do
  name = Faker::TvShows::StarTrek.specie + '' + rand(10).to_s + rand(10).to_s
  Cocktail.create(name: name)
end

puts "#{Ingredient.count} ingredients"
puts "#{Cocktail.count} cocktails"
puts "#{Dose.count} doses"
