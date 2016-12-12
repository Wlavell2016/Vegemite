# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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
                        address: "123 front street",
                        size: 15,
                        owner_id: 1,
                        image: "https://s-media-cache-ak0.pinimg.com/564x/08/e7/09/08e7092876f855f0cb43c9b7556ceadb.jpg")

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


vegetable2 = Vegetable.create!(name: "beet",
                              start_month: "March",
                              end_month: "November")
