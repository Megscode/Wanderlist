User.create!([
    { "name": "Liz", "username": "testuser", "email": "test@example.com", "password": "password" }
])

Place.create!([
{ "name": "Buckingham Palace", "latitude": "51.501564","longitude": "-0.141944", "description": "A big palace"},
{ "name": "Westminster Abbey", "latitude": "51.499581", "longitude": "-0.127309", "description": "A big Abbey"},
{ "name": "Big Ben", "latitude": "51.500792", "longitude": "-0.124613", "description": "A big Clock"}
])
Route.create!([
    {"title": "Royal Route","description": "See the Queen","place1_ID": "1", "place2_ID": "2", "place3_ID": "3" , "user_id": "1"},
    {"title": "Royal Route 2","description": "Sights around Buckingham Palace","place1_ID": "1", "place2_ID": "2", "place3_ID": "3" , "user_id": "1"}
])