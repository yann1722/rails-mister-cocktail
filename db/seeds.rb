# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.destroy_all
Cocktail.destroy_all
Dose.destroy_all

lemon = Ingredient.create(name: "lemon")
ice = Ingredient.create(name: "ice")
mint_leaves = Ingredient.create(name: "mint leaves")

mojito = Cocktail.create(name: "Mojito")
beer_lemon = Cocktail.create(name: "Beer lemon")
long_island = Cocktail.create(name: "Long Island")

Dose.create(description: "50 mg", ingredient_id: lemon.id, cocktail_id: mojito.id)
Dose.create(description: "50 mg", ingredient_id: ice.id, cocktail_id: mojito.id)
