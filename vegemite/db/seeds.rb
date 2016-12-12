# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

20.times do
  fullname = Faker::Name.name
  firstname = fullname.split.first

  user = User.create!(
    username: firstname.downcase,
    firstname: firstname,
    lastname: fullname.split.last,
    email: "#{firstname}@#{Faker::Internet.domain_name}",
    password: 'passpass',
    password_confirmation: 'passpass'
  )
end
#
# garden = Garden.create!(title: ,
#                         description:,
#                         address: ,
#                         size: )
#                         owner: )
#
# vegetable = Vegetable.create!(name: ,
#                               start_month: ,
#                               end_month: )
#
#
# end
#
# # Category.create(id:1, description: "Art")
# # Category.create(id:2, description: "Comics")
# # Category.create(id:3, description: "Crafts")
# # Category.create(id:4, description: "Dance")
# # Category.create(id:5, description: "Design")
# # Category.create(id:6, description: "Fashion")
# # Category.create(id:7, description: "Film/Video")
# # Category.create(id:8, description: "Food")
# # Category.create(id:9, description: "Games")
# # Category.create(id:10, description: "Journalism")
# # Category.create(id:11, description: "Music")
# # Category.create(id:12, description: "Photography")
# # Category.create(id:13, description: "Publishing")
