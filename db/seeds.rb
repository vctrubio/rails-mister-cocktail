# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'json'
# require 'open-uri'


# def get_json
#     source = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
#     new_uri = open(source).read
#     user = JSON.parse(new_uri)
#     puts "---------------"

#     newone = user["drinks"]

#     newone.each do |key|
#         savethis = key["strIngredient1"]
#         puts savethis
#         savethisone = Ingredient.new(name: savethis)
#         puts savethisone
#         savethisone.save
#     end






# end

# get_json()








puts 'Cleaning database...'
Ingredient.destroy_all

puts 'Creating ingredients for picking...'
ingredient_attributes = [
  {
    name:         'Lemon',

  },
  {
    name:         'Lime',
  },
  {
    name:         'Limones',
  },
  {
    name:         'Limon Amarillo',
  },
  {
    name:         'Limon Amargo',
  }
]


  Ingredient.create!(ingredient_attributes)

  puts "Ihopeso...Finished"

  