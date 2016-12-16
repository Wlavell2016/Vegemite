# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    # user = User.create!([{name: ''}, {name: ''}])




# require 'faker'
#
# 10.times do
#     fullname = Faker::Name.name
#     firstname = fullname.split.first
#
#     user = User.create!(
#         username: fullname.downcase,
#         firstname: firstname,
#         lastname: fullname.split.last,
#         email: "#{Faker::Internet.free_email(firstname)}",
#         password: 'passpass',
#         password_confirmation: 'passpass'
#     )
#
#     title = Faker::Pokemon.location
#     description = Faker::Hipster.paragraph(3)
#     size = Faker::Number.number(3)
#     image = Faker::Placeholdit.image
#     address = ['152 Augusta Avenue Toronto Ontario',
#                '62 Nassau Street Toronto Ontario',
#                '329 Manning Avenue Toronto Ontario',
#                '323 Sackville Street Toronto Ontario',
#                '2 Borden Street Toronto Ontario',
#                '730 King Street West Toronto Ontario',
#                '466 King Street West Toronto Ontario',
#                '859 Dundas Street West Toronto Ontario',
#                '499 College Street Toronto Ontario',
#                '557 Bathurst Street Toronto Ontario',
#                '74 Sussex Avenue Toronto Ontario',
#                '46 Lennox Street Toronto Ontario',
#                '108 Sussex Avenue Toronto Ontario',
#                '240 Berkeley Street Toronto Ontario',
#                '358 Ontario Street Toronto Ontario',
#                '217 St George Street Toronto Ontario',
#                '1025 Bloor Street Toronto Ontario',
#                '90 Gloucester Toronto Ontario',
#                '38 Woody Crest Avenue Toronto Ontario',
#                '588 Dupont Street Toronto Ontario'
#               ]
#
#     garden = Garden.create!(title: title,
#                             description: description,
#                             address: address.sample,
#                             size: size,
#                             user_id: user.id,
#                             image: image)
#
# end
#


# user = User.create!([
#      {username: 'slerner', firstname: 'Sean', lastname: 'Lerner', email: 'sean@bitmaker.co', password: 'passpass', image: 'imgres.jpg' },
#      {username: 'dmoniz', firstname: 'Daniel', lastname: 'Moniz', email: 'daniel@bitmaker.co', password: 'passpass', image: 'AAEAAQAAAAAAAAfkAAAAJGFhMmY4NTczLTUzYjYtNDI0My04MzA2LWJmNzA5ODBiZTRmOQ.jpg' },
#      {username: 'mmikhail', firstname: 'Mina', lastname: 'Mikhail', email: 'mina@bitmaker.co', password: 'passpass', image: 'quote_Mina011.jpg' },
#      {username: 'nblack', firstname: 'Natalie', lastname: 'Black', email: 'natalie@bitmaker.co', password: 'passpass', image: 'quote_Natalie.jpg' },
#      {username: 'kbsmooth', firstname: 'Kenny', lastname: 'Bui', email: 'kenny@email.co', password: 'passpass', image: 'medium_IMG_0621.jpg' },
#      {username: 'kclark', firstname: 'Kyle', lastname: 'Clark', email: 'kyle@email.co', password: 'passpass', image: 'medium_IMG_0614.jpg' },
#      {username: 'mclarke', firstname: 'Meg', lastname: 'Clarke', email: 'meg@email.co', password: 'passpass', image: 'medium_IMG_0626.jpg' },
#      {username: 'tmaloney', firstname: 'Ted', lastname: 'Maloney', email: 'ted@email.co', password: 'passpass', image: 'medium_IMG_0630.jpg' },
#      {username: 'ehartman', firstname: 'Eric', lastname: 'Hartman', email: 'eric@email.co', password: 'passpass', image: 'medium_IMG_0615.jpg' },
#      {username: 'jalexander', firstname: 'Jessica', lastname: 'Alexander', email: 'jessica@email.co', password: 'passpass', image: 'medium_IMG_0616.jpg' },
#      {username: 'jileto', firstname: 'John', lastname: 'Ileto', email: 'john@email.co', password: 'passpass', image: 'medium_thumb_IMG_1861_1024.jpg' },
#      {username: 'dmoon', firstname: 'David', lastname: 'Moon', email: 'david@email.co', password: 'passpass', image: 'medium_IMG_0632.jpg' },
#      {username: 'tsmith', firstname: 'Tyler', lastname: 'Smith', email: 'tyler@email.co', password: 'passpass', image: 'medium_IMG_0617.jpg' },
#      {username: '', firstname: '', lastname: '', email: '@email.co', password: 'passpass', image: '' },
#      ])
#
# garden = Garden.create!([
#     {title: '', description: '', address: '152 Augusta Avenue Toronto Ontario', size: , image: '', user_id:  },
#     {title: '', description: '', address: '62 Nassau Street Toronto Ontario', size: , image: '', user_id:  },
#     {title: '', description: '', address: '329 Manning Avenue Toronto Ontario', size: , image: '', user_id:  },
#     {title: '', description: '', address: '323 Sackville Street Toronto Ontario', size: , image: '', user_id:  },
#     {title: '', description: '', address: '2 Borden Street Toronto Ontario', size: , image: '', user_id:  },
#     {title: '', description: '', address: '730 King Street West Toronto Ontario', size: , image: '', user_id:  },
#     {title: '', description: '', address: '466 King Street West Toronto Ontario', size: , image: '', user_id:  },
#     {title: '', description: '', address: '859 Dundas Street West Toronto Ontario', size: , image: '', user_id:  },
#     {title: '', description: '', address: '499 College Street Toronto Ontario', size: , image: '', user_id:  },
#     {title: '', description: '', address: '557 Bathurst Street Toronto Ontario', size: , image: '', user_id:  },
#     {title: '', description: '', address: '74 Sussex Avenue Toronto Ontario', size: , image: '', user_id:  },
#     {title: '', description: '', address: '46 Lennox Street Toronto Ontario', size: , image: '', user_id:  },
#     {title: '', description: '', address: '240 Berkeley Street Toronto Ontario', size: , image: '', user_id:  },
#     {title: '', description: '', address: '588 Dupont Street Toronto Ontario', size: , image: '', user_id:  },
#     ])

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
