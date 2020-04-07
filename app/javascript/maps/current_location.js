window.initUserLocation = function() {
  var getLocation = document.getElementById('get-location')
  getLocation.addEventListener('click', function() {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(function(position) {
        var pos = { 
          lat: position.coords.latitude,
          lng: position.coords.longitude
        };
        document.location.href='http://localhost:3000/nearby?lat='+pos.lat+'&lng='+ pos.lng
      })
    }
  })
    var input = document.getElementById('pac-input');
    var autocomplete = new google.maps.places.Autocomplete(input);

    var grab_place = document.getElementById('submit')
    grab_place.addEventListener('click', initAutoComplete)

    function initAutoComplete() {
      var input = document.getElementById('pac-input');
      var autocomplete = new google.maps.places.SearchBox(input);
      console.log(autocomplete.getPlace())
      lat = autocomplete.getPlace().location.lat
      console.log(lat)
      lng = autocomplete.getPlace().location.lng
      // document.addEventListener('lat')
    }
    // google.maps.event.addDomListener(window, 'load', initAutocomplete);
  // }
}
export default initUserLocation

// function addPlace() {
//   if (route.length === 8) {
//     alert("You can only add up to 8 places to a route")
//   } else {
//     var newPlace = searchBox.getPlaces()[0]
//     var placeParams = { 
//       name: newPlace.name, 
//       description: newPlace.formatted_address, 
//       latitude: newPlace.geometry.location.lat, 
//       longitude: newPlace.geometry.location.lng,
//       google_places_id: newPlace.place_id
//     }

//     addMarker(newPlace)
//     input.value = ""
//     route.push(placeParams)
//     printRoute()
//   } 