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
lemon = Ingredient.create(name: 'lemon')
ice = Ingredient.create(name: 'ice')
mint = Ingredient.create(name: 'mint leaves')
peppermint = Ingredient.create(name: "Peppermint schnapps")
cassis = Ingredient.create(name: "Creme de Cassis")
jack = Ingredient.create(name: "Jack Daniels")

puts 'Creating cocktails...'
6.times do |cocktail|
  cocktail = Cocktail.create(name: Faker::TvShows::StarTrek.specie)
end

puts "#{Ingredient.count} ingredients"
puts "#{Cocktail.count} cocktails"
puts "#{Dose.count} doses"
