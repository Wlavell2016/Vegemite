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

garden = Garden.create!(title: "John's garden",
                        description: "small garden",
                        address: "2434 cornwall avenue vancouver bc",
                        size: 15,
                        owner_id: 1,
                        image: "https://s-media-cache-ak0.pinimg.com/564x/08/e7/09/08e7092876f855f0cb43c9b7556ceadb.jpg")

garden = Garden.create!(title: "John's garden",
                    description: "small garden",
                    address: "4576 connaught drive vancouver bc",
                    size: 15,
                    owner_id: 1)

garden = Garden.create!(title: "John's garden",
                    description: "small garden",
                    address: "1237 east broadway vancouver bc",
                    size: 15,
                    owner_id: 2)

garden = Garden.create!(title: "John's garden",
                    description: "small garden",
                    address: "3263 west 33rd avenue vancouver bc",
                    size: 15,
                    owner_id: 3)

garden = Garden.create!(title: "John's garden",
                    description: "small garden",
                    address: "1168 howe street vancouver bc",
                    size: 15,
                    owner_id: 4)

garden = Garden.create!(title: "John's garden",
                    description: "small garden",
                    address: "1842 west 3rd avenue vancouver bc",
                    size: 15,
                    owner_id: 5)

vegetable = Vegetable.create!(name: "corn",
                              start_month: "March",
                              end_month: "November")

vegetable2 = Vegetable.create!(name: "beet",
                              start_month: "March",
                              end_month: "November")
