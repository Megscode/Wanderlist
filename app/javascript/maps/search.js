 window.initSearch = function() {
  var mapOptions = {zoom: 14, center: {lat: 51.5428627, lng: -0.039212}, mapTypeId: 'roadmap'};
  var map = new google.maps.Map(document.getElementById('map'), mapOptions);
  var input = document.getElementById('pac-input');
  var searchBox = new google.maps.places.SearchBox(input);
  var searchMarkers = [];
  var route = [];

  document.getElementById('add-marker').addEventListener('click', addPlace);
  document.getElementById('submit-form').addEventListener('click', createRoute);
  searchBox.addListener('places_changed', grabPlace);

  map.addListener('bounds_changed', function() {
    searchBox.setBounds(map.getBounds());
  });

  // Listen for the event fired when the user selects a prediction and retrieve
  // more details for that place.
  function grabPlace() {
    var places = searchBox.getPlaces();

    if (places.length == 0) {
      return;
    }
  
    // Clear out the old markers.
    searchMarkers.forEach(function(marker) {
      marker.setMap(null);
    });
    searchMarkers = [];

    // For each place, get the icon, name and location.
    var bounds = new google.maps.LatLngBounds();
    places.forEach(function(place) {
      if (!place.geometry) {
        console.log("Returned place contains no geometry");
        return;
      }
      var icon = {
        url: place.icon,
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(17, 34),
        scaledSize: new google.maps.Size(25, 25)
      };

      // Create a marker for each place.
      searchMarkers.push(new google.maps.Marker({
        map: map,
        icon: icon,
        title: place.name,
        position: place.geometry.location
      }));

      if (place.geometry.viewport) {
        // Only geocodes have viewport.
        bounds.union(place.geometry.viewport);
      } else {
        bounds.extend(place.geometry.location);
      }
    });

    map.fitBounds(bounds);
    
  };

  function printRoute() {
    document.getElementById('places').innerHTML = displayRoute()
  }

  function displayRoute() {
    var routeString = ''
    for(var i = 0; i < route.length; i++) {
      var place = route[i]
      routeString += `<div class'card'><h5 class='card-title'>${place.name}</h5><p>${place.description}</p></div><hr>` 
    }
    return routeString
  }

  function addPlace() {
    if (route.length === 8) {
      alert("You can only add up to 8 places to a route")
    } else {
      var newPlace = searchBox.getPlaces()[0]
      var placeParams = { 
        name: newPlace.name, 
        description: newPlace.formatted_address, 
        latitude: newPlace.geometry.location.lat, 
        longitude: newPlace.geometry.location.lng,
        google_places_id: newPlace.place_id
      }

      addMarker(newPlace)
      input.value = ""
      route.push(placeParams)
      printRoute()
    } 
  }

  function addMarker(props) {
    var marker = new google.maps.Marker({
      position: props.geometry.location, 
      map: map,
    })

    var infoWindow = new google.maps.InfoWindow({
      content: `<h1>${props.name}</h1><p>${props.formatted_address}</p>`
    })

    marker.addListener('click', function() {
      infoWindow.open(map, marker)
    })

  }

  function createRoute() {
    var title = document.forms["routeForm"]["route_title"].value
    var description = document.forms["routeForm"]["route_description"].value
    
    if (title === '' || title === ' ') {
      alert("Route requires a title")
    } else if (route.length <= 1 ) {
      alert("Routes must have more than one place")
    } else {
      $.ajax({
        type: "POST",
        url: "/routes",
        data: { title, description, route },
        remote: true,
        success(data) {}
      })
    }
  }
 }
  export default initSearch

