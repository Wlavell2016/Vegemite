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

name = ['Asparagus',
        'Broad Beans',
        'Beetroot',
        'Broccoli',
        'Cabbage',
        'Carrot',
        'Cauliflower',
        'Celeriac',
        'Celery',
        'Cucumber',
        'Endive',
        'French Beans',
        'Leek',
        'Mustard',
        'Onion',
        'Parsley',
        'Peas',
        'Peppers',
        'Spinach',
        'Squash',
        'Tomato']

sow_period = [
    'Jan - Feb',
    'Feb - May',
    'Mar - Jul',
    'Apr - Jun',
    'Feb - Jun',
    'Feb - Aug',
    'Jan - Jun',
    'Feb - Apr',
    'Feb - May',
    'Feb - Apr',
    'Mar - Jul',
    'Apr - Jun',
    'Mar - May',
    'Jun - Sep',
    'Feb - Apr',
    'Feb - Jul',
    'Mar - Jun',
    'Mar - Apr',
    'Mar - Jul',
    'Mar - Apr',
    'Nov - Mar'
]

plant_out_period = [
    'Apr - May',
    'n/a',
    'n/a',
    'Jun - Jul',
    'Mar - Jun',
    'n/a',
    'Mar - Jul',
    'Apr - May',
    'Mar - May',
    'May - Aug',
    'May - Jun',
    'Apr - May',
    'n/a',
    'n/a',
    'n/a',
    'n/a',
    'Apr - Jun',
    'n/a',
    'May - Jun',
    'n/a',
    'Feb - May'
]

harvest = [
    'Apr - Jun',
    'May - Oct',
    'Jun - Oct',
    'Jul - Aug',
    'Jun - Oct',
    'Jun - Oct',
    'Jul - Nov',
    'Oct - Dec',
    'Jul - Nov',
    'Apr - Jul',
    'Jul - Oct',
    'May - Oct',
    'Jul - Nov',
    'Jul - Oct',
    'Aug - Oct',
    'Jun - Sep',
    'Jun - Sep',
    'Jun - Oct',
    'Apr - Oct',
    'Jun - Sep',
    'Aug - Oct'
]

name.length.times do |i|
    vegetable = Vegetable.create!(name: name[i],
                                  sow_period: sow_period[i],
                                  plant_out_period: plant_out_period[i],
                                  harvest: harvest[i])
end
