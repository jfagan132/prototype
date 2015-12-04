# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(name:  "Admin",
             email: "admin@gmail.com",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end

Game.create!(title: "Undertale", genre:"RPG", rating:"Not Rated")
Game.create!(title: "Fallout 4", genre:"Shooter", rating:"M")

99.times do |n|
    Game.create!(title: "game-#{n+1}", genre:"genre-#{n+1}", rating:"E")
end

Reccomendation.create!(opinion:"It's very good", user: User.find(1), game: Game.find(1))
Reccomendation.create!(opinion:"It's great", user: User.find(3), game: Game.find(2))