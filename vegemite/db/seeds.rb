# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(username: "asmith",
                    firstname: "John",
                    lastname: "Smith",
                    email: "asmith1@gmail.com",
                    password: "passpass",
                    password_confirmation: "passpass")
                    # type: 'A')

garden = Garden.create!(title: "John's garden",
                    description: "small garden",
                    address: "242 front street, toronto ontario, canada",
                    size: 15,
                    owner_id: 1)

user = User.create!(username: "bsmith",
                    firstname: "John",
                    lastname: "Smith",
                    email: "bsmith1@gmail.com",
                    password: "passpass",
                    password_confirmation: "passpass")
                    # type: 'B')

garden = Garden.create!(title: "John's garden",
                    description: "small garden",
                    address: "242 front street, toronto ontario, canada",
                    size: 15,
                    owner_id: 2)

user = User.create!(username: "csmith",
                    firstname: "John",
                    lastname: "Smith",
                    email: "csmith1@gmail.com",
                    password: "passpass",
                    password_confirmation: "passpass")
                    # type: 'C')

garden = Garden.create!(title: "John's garden",
                    description: "small garden",
                    address: "242 front street, toronto ontario, canada",
                    size: 15,
                    owner_id: 3)

user = User.create!(username: "dsmith",
                    firstname: "John",
                    lastname: "Smith",
                    email: "dsmith1@gmail.com",
                    password: "passpass",
                    password_confirmation: "passpass")
                    # type: 'D')

garden = Garden.create!(title: "John's garden",
                    description: "small garden",
                    address: "123 front street",
                    size: 15,
                    owner_id: 4)


user = User.create!(username: "esmith",
                    firstname: "John",
                    lastname: "Smith",
                    email: "esmith1@gmail.com",
                    password: "passpass",
                    password_confirmation: "passpass")
                    # type:)

garden = Garden.create!(title: "John's garden",
                    description: "small garden",
                    address: "123 front street",
                    size: 15,
                    owner_id: 5)


vegetable = Vegetable.create!(name: "corn",
                              start_month: "March",
                              end_month: "November")

# Vegetable.create(name: "tomato", start_month: "April", end_month: "May")
# Vegetable.create(name: "broccoli", start_month: "March", end_month: "May")
# Vegetable.create(name: "pumpkin", start_month: "May", end_month: "May")

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
