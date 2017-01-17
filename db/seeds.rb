# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#   user = User.create!([{name: ''}, {name: ''}])

require 'faker'

# user = User.create!([
#                         { username: 'slerner', firstname: 'Sean', lastname: 'Lerner', email: 'sean@bitmaker.co', password: 'passpass', image: 'imgres.jpg' },
#                         { username: 'dmoniz', firstname: 'Daniel', lastname: 'Moniz', email: 'daniel@bitmaker.co', password: 'passpass', image: 'AAEAAQAAAAAAAAfkAAAAJGFhMmY4NTczLTUzYjYtNDI0My04MzA2LWJmNzA5ODBiZTRmOQ.jpg' },
#                         { username: 'mmikhail', firstname: 'Mina', lastname: 'Mikhail', email: 'mina@bitmaker.co', password: 'passpass', image: 'quote_Mina011.jpg' },
#                         { username: 'nblack', firstname: 'Natalie', lastname: 'Black', email: 'natalie@bitmaker.co', password: 'passpass', image: 'quote_Natalie.jpg' },
#                         { username: 'kbsmooth', firstname: 'Kenny', lastname: 'Bui', email: 'kenny@email.com', password: 'passpass', image: 'medium_IMG_0621.jpg' },
#                         { username: 'kclark', firstname: 'Kyle', lastname: 'Clark', email: 'kyle@email.com', password: 'passpass', image: 'medium_IMG_0614.jpg' },
#                         { username: 'mclarke', firstname: 'Meg', lastname: 'Clarke', email: 'meg@email.com', password: 'passpass', image: 'medium_IMG_0626.jpg' },
#                         { username: 'tmaloney', firstname: 'Ted', lastname: 'Maloney', email: 'ted@email.com', password: 'passpass', image: 'medium_IMG_0630.jpg' },
#                         { username: 'ehartman', firstname: 'Eric', lastname: 'Hartman', email: 'eric@email.com', password: 'passpass', image: 'medium_IMG_0615.jpg' },
#                         { username: 'jalexander', firstname: 'Jessica', lastname: 'Alexander', email: 'jessica@email.com', password: 'passpass', image: 'medium_IMG_0616.jpg' },
#                         { username: 'jileto', firstname: 'John', lastname: 'Ileto', email: 'john@email.com', password: 'passpass', image: 'medium_thumb_IMG_1861_1024.jpg' },
#                         { username: 'dmoon', firstname: 'David', lastname: 'Moon', email: 'david@email.com', password: 'passpass', image: 'medium_IMG_0632.jpg' },
#                         { username: 'tsmith', firstname: 'Tyler', lastname: 'Smith', email: 'tyler@email.com', password: 'passpass', image: 'medium_IMG_0617.jpg' },
#                         { username: 'wlavell', firstname: 'William', lastname: 'Lavell', email: 'william@email.com', password: 'passpass', image: 'medium_IMG_0617.jpg' },
#                         { username: 'pmorales', firstname: 'Prisara', lastname: 'Morales', email: 'pmorales@email.com', password: 'passpass', image: 'medium_IMG_0617.jpg' }
#                     ])

# 15.times do
#     title = Faker::Pokemon.location
#     description = Faker::Hipster.paragraph(2)
#     size = Faker::Number.number(3)
#     # image = Faker::Placeholdit.image
#     user_id = Faker::Number.between(1, 16)
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
#                '588 Dupont Street Toronto Ontario']

  # garden = Garden.create!(title: title,
  #                         description: description,
  #                         address: address.sample,
  #                         size: size,
  #                         user_id: user_id)
  #                         # image: image)


end

vegetable = Vegetable.create!([
                                  { name: 'Asparagus', sow_period: 'Jan - Feb', plant_out_period: 'Apr - May', harvest: 'Apr - Jun' },
                                  { name: 'Broad Beans', sow_period: 'Feb - May', plant_out_period: 'n/a', harvest: 'May - Oct' },
                                  { name: 'Beetroot', sow_period: 'Mar - Jul', plant_out_period: 'n/a', harvest: 'Jun - Oct' },
                                  { name: 'Broccoli', sow_period: 'Apr - Jun', plant_out_period: 'Jun - Jul', harvest: 'Jul - Aug' },
                                  { name: 'Cabbage', sow_period: 'Feb - Jun', plant_out_period: 'Mar - Jun', harvest: 'Jun - Oct' },
                                  { name: 'Carrot', sow_period: 'Feb - Aug', plant_out_period: 'n/a', harvest: 'Jun - Oct' },
                                  { name: 'Cauliflower', sow_period: 'Jan - Jun', plant_out_period: 'Mar - Jul', harvest: 'Jul - Nov' },
                                  { name: 'Celeriac', sow_period: 'Feb - Apr', plant_out_period: 'Apr - May', harvest: 'Oct - Dec' },
                                  { name: 'Celery', sow_period: 'Feb - May', plant_out_period: 'Mar - May', harvest: 'Jul - Nov' },
                                  { name: 'Cucumber', sow_period: 'Feb - Apr', plant_out_period: 'May - Aug', harvest: 'Apr - Jul' },
                                  { name: 'Endive', sow_period: 'Mar - Jul', plant_out_period: 'May - Jun', harvest: 'Jul - Oct' },
                                  { name: 'French Beans', sow_period: 'Apr - Jun', plant_out_period: 'Apr - May', harvest: 'May - Oct' },
                                  { name: 'Leek', sow_period: 'Mar - May', plant_out_period: 'n/a', harvest: 'Jul - Nov' },
                                  { name: 'Mustard', sow_period: 'Jun - Sep', plant_out_period: 'n/a', harvest: 'Jul - Oct' },
                                  { name: 'Onion', sow_period: 'Feb - Apr', plant_out_period: 'n/a', harvest: 'Aug - Oct' },
                                  { name: 'Parsnip', sow_period: 'Feb - Jul', plant_out_period: 'n/a', harvest: 'Jun - Sep' },
                                  { name: 'Peas', sow_period: 'Mar - Jun', plant_out_period: 'Apr - Jun', harvest: 'Jun - Sep' },
                                  { name: 'Peppers', sow_period: 'Mar - Apr', plant_out_period: 'n/a', harvest: 'Jun - Oct' },
                                  { name: 'Spinach', sow_period: 'Mar - Jul', plant_out_period: 'May - Jun', harvest: 'Apr - Oct' },
                                  { name: 'Squash', sow_period: 'Mar - Apr', plant_out_period: 'n/a', harvest: 'Jun - Sep' },
                                  { name: 'Tomato', sow_period: 'Nov - Mar', plant_out_period: 'Feb - May', harvest: 'Aug - Oct' }
                              ])
#
# set = (1..21).to_a.sample 12
#
# g1 = Garden.find(1)
# g1.vegetables << Vegetable.find(set)
#
# g2 = Garden.find(2)
# g2.vegetables << Vegetable.find(set)
#
# g3 = Garden.find(3)
# g3.vegetables << Vegetable.find(set)
#
# g4 = Garden.find(4)
# g4.vegetables << Vegetable.find(set)
#
# g5 = Garden.find(5)
# g5.vegetables << Vegetable.find(set)
#
# g6 = Garden.find(6)
# g6.vegetables << Vegetable.find(set)
#
# g7 = Garden.find(7)
# g7.vegetables << Vegetable.find(set)
#
# g8 = Garden.find(8)
# g8.vegetables << Vegetable.find(set)
#
# g9 = Garden.find(9)
# g9.vegetables << Vegetable.find(set)
#
# g10 = Garden.find(10)
# g10.vegetables << Vegetable.find(set)
#
# g11 = Garden.find(11)
# g11.vegetables << Vegetable.find(set)
#
# g12 = Garden.find(12)
# g12.vegetables << Vegetable.find(set)
#
# g13 = Garden.find(13)
# g13.vegetables << Vegetable.find(set)
#
# g14 = Garden.find(14)
# g14.vegetables << Vegetable.find(set)
#
# g15 = Garden.find(15)
# g15.vegetables << Vegetable.find(set)
