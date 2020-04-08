# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!([
    { "username": "testuser", "email": "test1@example.com", "password": "password"},
    { "username": "xXxl337hAXxXx", "email": "leethacker@example.com", "password": "password"},
    { "username": "RPatz", "email": "rickkyP@example.com", "password": "password"},
    { "username": "Eliza", "email": "eliza@example.com", "password": "password"},
    { "username": "bigJim", "email": "big.jim@example.com", "password": "password"}
])

Place.create!([
{ "name": "Buckingham Palace", "latitude": "51.501564","longitude": "-0.141944", "description": "Feel the history as you tour the seat of britains head of state"},
{ "name": "Westminster Abbey", "latitude": "51.499581", "longitude": "-0.127309", "description": "Beloved by tourists and locals alike, an unforgettable sight"},
{ "name": "Big Ben", "latitude": "51.500792", "longitude": "-0.124613", "description": "This huge clock has to be seen to be believed, comes with a discount for pensioners"},
{ "name": "British Museum", "latitude": "51.5194", "longitude": "-0.1270", "description": "Full of artifacts, audio tours avaliable with an excellent cafe"},
{ "name": "Natural History Museum", "latitude": "51.4967", "longitude": "-0.1764", "description": "One of the oldest and most complete records of life on earth. The full blue whale skeleton has to be seen to be believed."},
{ "name": "Science Museum", "latitude": "51.4978", "longitude": "-0.1745", "description": "A fun interactive look at the wealth of british engineering and scientific history, great for kids"},
{ "name": "Victoria and Albert Museum", "latitude": "51.4966", "longitude": "-0.1722", "description": "A dazzling collections of artifacts from across the known world."},
{ "name": "The National Gallery", "latitude": "51.5089", "longitude": "-0.1283", "description": "An outstanding collection of some of the greatest works of art avaliable"},
{ "name": "The National Portrait Gallery", "latitude": "51.5094", "longitude": "-0.1281", "description": "Like its cousin the national gallery, but with a focus on paintings of the aristocracy"},
{ "name": "Wong Kei", "latitude": "51.5115°", "longitude": "-0.1323", "description": "A beloved chinese restaurant with three floors and very reasonable prices. Great place for lunch."},
{ "name": "The House of Spells", "latitude": "51.5124", "longitude": "-0.1288", "description": "A wonderful shop containign harry potter and game of thrones memoribilia"},
{ "name": "Royal Opera House", "latitude": "51.5129", "longitude": "-0.1222", "description": "Tickets required for this world class Opera House. The cafe is quite special too."},
{ "name": "The Crobar", "latitude": "51.5149", "longitude": "-0.1303", "description": "A loud and proud metal bar with jaegermeister on tap."},
{ "name": "Garlic & Shots", "latitude": "51.5138", "longitude": "-0.1315", "description": "A disused WW2 air shelter that has been adapted into londons favourite shots only bar"},
{ "name": "Simmons Bar Soho", "latitude": "51.514098,", "longitude": "-0.1334157", "description": "A great spot with long running happy hours and great cocktails"},
{ "name": "St Pauls Cathedral", "latitude": "51.5138", "longitude": "-0.0984", "description": "St. Paul's Cathedral, designed by the architect Sir Christopher Wren, is an Anglican cathedral and one of London's most iconic buildings. It is located on top of Ludgate Hill, the highest point in the City of London"},
{ "name": "The Globe Theatre", "latitude": "51.5081", "longitude": "-0.0972", "description": "The Globe Theatre was a theatre in London associated with William Shakespeare. It was built in 1599 by Shakespeare's playing company, the Lord Chamberlain's Men, on land owned by Thomas Brend and inherited by his son, Nicholas Brend and grandson Sir Matthew Brend, and was destroyed by fire on 29 June 1613. The restored version is well worth a visit."},
{ "name": "The Tower of London", "latitude": "51.5081", "longitude": "-0.0759", "description": "he Tower of London is an internationally famous monument and one of England's most iconic structures. William the Conqueror built the White Tower in 1066 as a demonstration of Norman power, siting it strategically on the River Thames to act as both fortress and gateway to the capital."}

])
Route.create!([
    {"title": "Royal Route","description": "Enjoy a magnificent afternoon with all the royal family have to offer","place1_ID": "1", "place2_ID": "2", "place3_ID": "3" , "user_id": "1", "starting_lat": "51.501564","starting_lng": "-0.141944", "hot_score": "1.2", "points": "8"},
    {"title": "Museum Tour","description": "A fun packed afternoon of londons best museums","place1_ID": "4", "place2_ID": "5", "place3_ID": "6" , "place4_ID": "7", "user_id": "2", "starting_lat": "51.5194", "starting_lng": "-0.1270", "hot_score": "1.5", "points": "11"},
    {"title": "Gallery Tour","description": "A wonderful tour lasting four hours providing some of the most beautiful portraits and vistas avaliable. Lunch suggestions included.","place1_ID": "8", "place2_ID": "9", "place3_ID": "10" ,"place4_ID": "11", "place5_ID": "12", "user_id": "3", "starting_lat": "51.5089","starting_lng": "-0.1283" , "hot_score": "0.9", "points": "7"},
    {"title": "BarCrawl","description": "A raucous night out on the town, iron maiden and shots seem likely.","place1_ID": "113", "place2_ID": "14", "place3_ID": "15" , "user_id": "4", "starting_lat": "51.5149","starting_lng": "-0.1303", "hot_score": "1.6", "points": "12"},
    {"title": "Historical Tour","description": "A tour of some of the most historically important sights of london with an excellent walk between.","place1_ID": "16", "place2_ID": "17", "place3_ID": "18" , "user_id": "5", "starting_lat": "51.5138","starting_lng": "-0.0984", "hot_score": "0.5", "points": "5"}
])
