require 'faker'

p "Start seeding..."
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
