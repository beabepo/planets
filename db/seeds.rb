# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Planet.delete_all

Planet.create!(
  name: 'Mars',
  image_url: 'mars.jpg',
  diameter: 6794,
  mass: 6.4219e23,
  details:
    %{
      Mars is the only planet whose surface can be seen in detail from the Earth.
      It is reddish in color, and was named after the bloody red God of war of the
      ancient Romans. Mars is the fourth closest planet to the sun. The diameter
      of Mars is 4,200 miles, a little over half that of the Earth. Mercury is the
      only planet smaller than Mars.
      
    },
  facts:
    %{
      Mars orbits the sun every 687 Earth days.
      The Martian "day" is about half a hour longer than Earth.
      At its brightest, Mars outshines every other planet apart from Venus.
      The thin atmosphere of Mars is made of mostly carbon dioxide.
      
    }
)
