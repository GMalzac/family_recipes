require 'faker'

p "Start seeding..."

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
