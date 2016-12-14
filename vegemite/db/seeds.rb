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
        username: fullname.downcase,
        firstname: firstname,
        lastname: fullname.split.last,
        email: "#{Faker::Internet.free_email(firstname)}",
        password: 'passpass',
        password_confirmation: 'passpass'
    )
end

20.times do
    title = Faker::Pokemon.location
    description = Faker::Lorem.paragraphs(1)
    size = Faker::Number.number(3)
    address = ['4576 connaught drive vancouver bc',
               '1237 east broadway vancouver bc',
               '3263 west 33rd avenue vancouver bc',
               '1168 howe street vancouver bc']

    garden = Garden.create!(title: title,
                            description: description,
                            address: address.sample,
                            size: size)
end
