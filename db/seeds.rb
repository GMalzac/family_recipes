require 'faker'

p "Start seeding..."

QuantityIngredient.destroy_all
p "All ingredients deleted"

Recipe.destroy_all
p "All recipes deleted"
User.destroy_all
p "All users deleted"


p "Creating Greg"
User.create(
  username: "Greg",
  first_name: "Gregoire",
  last_name: "Malzac",
  email: "g@g.com",
  password: 123456
)

p "Creating 25 fake users"
25.times do
  User.create(
    username: Faker::Superhero.name,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: 123456
  )
  print "."
end

p "Creating 40 recipes"
40.times do
  Recipe.create!(
    name: Faker::Food.dish,
    cooktime: [0, 5, 10, 15, 20, 25, 30, 45, 60, 75, 90, 105, 120, 135, 150, 165, 180, 240, 300, 360, 420].sample,
    preptime: [0, 5, 10, 15, 20, 25, 30, 45, 60, 75, 90].sample,
    category: ["Entrée / Apéro", "Plat principal végétarien", "Plat principal à base de viande", "Plat principal à base de poisson", "Dessert"].sample,
    creator_id: rand(User.first.id..User.last.id),
    poster_id: rand(User.first.id..User.last.id),
    description: Faker::Food.description
  )
  print "."
end

p "Creating ingredients for recipes"
Recipe.all.each do |recipe|
  rand(3..10).times do
    QuantityIngredient.create!(recipe_id: recipe.id, quantities_and_ingredients: ["1l of Milk", "300g of Flour", "5 Eggs", "100g of Sugar", "5g of Salt", "1l of Water", "3cl of Vegetable oil", "2 branches of Cinnamon", "2 spoons of Paprika", "400g Jasmin rice", "200g Butter", "5g Pepper",
"3 Flying fish", "3 spoons Lime juice", "1 Garlic", "1 Celery", "1 Corn meal", "2 Okra", "300g Lentils", "4 Onion", "5 Tumeric", "3 Cumin", "2 Ginger"].sample)
  end
end
