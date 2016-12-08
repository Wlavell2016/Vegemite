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
                    email: "jsmith1@gmail.com",
                    password: "passpass",
                    password_confirmation: "passpass")

garden = Garden.create!(title: "John's garden",
                        description: "small garden",
                        address: "123 front street",
                        size: 15,
                        owner: user)

vegetable = Vegetable.create!(name: "corn",
                              start_month: "March",
                              end_month: "November")
