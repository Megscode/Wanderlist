# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!([
    { "name": "Liz", "username": "testuser", "email": "test@example.com", "password": "password" }
])

Place.create!([
{ "name": "Buckingham Palace", "latitude": "51.501564","longitude": "-0.141944", "description": "A big palace"},
{ "name": "Westminster Abbey", "latitude": "51.499581", "longitude": "-0.127309", "description": "A big Abbey"},
{ "name": "Big Ben", "latitude": "51.500792", "longitude": "-0.124613", "description": "A big Clock"}
])
Route.create!([
    {"title": "Royal Route","description": "See the Queen","place1_ID": "1", "place2_ID": "2", "place3_ID": "3" , "user_id": "1", "starting_lat": "51.501564","starting_lng": "-0.141944"}
])