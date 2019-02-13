# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '0123456789',
    category:     'chinese',
  },
  {
    name:         'Pizza Hut',
    address:      '8 via Roma, Barcelona',
    phone_number: '0109876543',
    category:     'italian',
  },
  {
    name:         'Sushi Shop',
    address:      '3 rue de Tokyo, Paris',
    phone_number: '0156766839',
    category:     'japanese',
  },
  {
    name:         'Chez Jean',
    address:      '4 rue de la France, Paris',
    phone_number: '0173788495',
    category:     'french',
  },
  {
    name:         'Belgian Fries',
    address:      '10 rue de la frite, Bruxelles',
    phone_number: '0189498493',
    category:     'belgian',
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
