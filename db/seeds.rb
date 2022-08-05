# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


User.create!(email: "username", password: BCrypt::Password.create('Your_Password'))

PinDrop.create(name: "hazard_pothole", image_url: "hazard-pothole.png", blurb: "pothole ahead, be safe!", user_id: 1)

Location.create(latitude: 39.558491, longitude: -104.987709, pin_drop_id: 1 )

PinDropReaction.create(name: "still there", image_url: "still-there.png", pin_drop_id: 1 )

puts "Done!"