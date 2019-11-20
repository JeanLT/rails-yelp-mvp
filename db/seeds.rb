# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '02839283928',
    category:     'chinese'
  },
  {
    name:         'La baguette',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '07927492748',
    category:     'french'
  },
  {
    name:         'La meilleure pizz',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '07927492748',
    category:     'italian'
  },
  {
    name:         'le top sushi',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '07987998898',
    category:     'japanese'
  },
  {
    name:         'la bonne frite',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '098723978',
    category:     'belgian'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
