window.initSearchedLocation = function() {
  var input = document.getElementById('pac-input');
  var searchBox = new google.maps.places.SearchBox(input);
  var route = [];

  document.getElementById('submit').addEventListener('click', function() {
    console.log("we just clicked the submit button!")
  // searchBox.addListener('places_changed', grabPlace);

  // // function addPlace() {
  // //     var newPlace = searchBox.getPlaces()[0]
  // //     var placeParams = { 
  // //       name: newPlace.name, 
  // //       description: newPlace.formatted_address, 
  // //       latitude: newPlace.geometry.location.lat, 
  // //       longitude: newPlace.geometry.location.lng,
  // //       google_places_id: newPlace.place_id
  // //     }
 }
 export default initSearchedLocation