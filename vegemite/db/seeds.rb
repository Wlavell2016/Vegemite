# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(username: "jsmith",
                    firstname: "John",
                    lastname: "Smith",
                    email: "jsmith3@gmail.com",
                    password: "passpass",
                    password_confirmation: "passpass")

garden = Garden.create!(title: "John's garden",
                        description: "small garden",
                        address: "123 front street",
                        size: 15,
                        owner_id: 1,
                        image: "https://s-media-cache-ak0.pinimg.com/564x/08/e7/09/08e7092876f855f0cb43c9b7556ceadb.jpg")

vegetable = Vegetable.create!(name: "corn",
                              start_month: "March",
                              end_month: "November")

vegetable2 = Vegetable.create!(name: "beet",
                              start_month: "March",
                              end_month: "November")

Vegetable.create(id:10, name: "tomato", start_month: "April", end_month: "May")
Vegetable.create(id:11, name: "broccoli", start_month: "March", end_month: "May")
Vegetable.create(id:12, name: "pumpkin", start_month: "May", end_month: "May")

vegetable garden

# Category.create(id:1, description: "Art")
# Category.create(id:2, description: "Comics")
# Category.create(id:3, description: "Crafts")
# Category.create(id:4, description: "Dance")
# Category.create(id:5, description: "Design")
# Category.create(id:6, description: "Fashion")
# Category.create(id:7, description: "Film/Video")
# Category.create(id:8, description: "Food")
# Category.create(id:9, description: "Games")
# Category.create(id:10, description: "Journalism")
# Category.create(id:11, description: "Music")
# Category.create(id:12, description: "Photography")
# Category.create(id:13, description: "Publishing")
