 window.initSearch = function() {
  console.log("loading")
  var mapOptions = {zoom: 14, center: {lat: 51.5428627, lng: -0.039212}, mapTypeId: 'roadmap'}

  var map = new google.maps.Map(
    document.getElementById('map'), mapOptions);

  var input = document.getElementById('pac-input');
  var searchBox = new google.maps.places.SearchBox(input);
  var addPlace = document.getElementById('add-marker')
  var submitForm = document.getElementById('submit-form')

  var route = []

  map.addListener('bounds_changed', function() {
    searchBox.setBounds(map.getBounds());
  });

  
  var markers = []
  // Listen for the event fired when the user selects a prediction and retrieve
  // more details for that place.
  searchBox.addListener('places_changed', function() {
    var places = searchBox.getPlaces();

    if (places.length == 0) {
      return;
    }
  
    // Clear out the old markers.
    markers.forEach(function(marker) {
      marker.setMap(null);
    });
    markers = [];

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
      markers.push(new google.maps.Marker({
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

    
  });

  function printRoute() {
    document.getElementById('places').innerHTML = displayRoute()
  }

  function displayRoute() {


    var routeString = '<ol>'
    for(var i = 0; i < route.length; i++) {
      var place = route[i]
      routeString += `<li><p>${place.name}</p><p>${place.description}</p></li>` 
    }

    return routeString + '</ol>'
  }

  addPlace.addEventListener('click', function() {
    if (route.length === 8) {
      throw Error("You can only add up to 8 places to a route")
    } else {
      var newPlace = searchBox.getPlaces()[0]
      var placeParams = { 
        name: newPlace.name, 
        description: newPlace.formatted_address, 
        latitude: newPlace.geometry.location.lat, 
        longitude: newPlace.geometry.location.lng,
        google_places_id: newPlace.place_id
      }
      // console.log(newPlace)
      addMarker(newPlace)
      route.push(placeParams)
      printRoute()
      // createPlace(newPlace)
    }
    
  })

  function createPlace(props) {
    var name = props.name;
    var latitude = props.geometry.location.lat;
    var longitude = props.geometry.location.lng;
    var description = props.formatted_address;
    var google_places_id = props.place_id
    
    $.ajax({
      type: "POST",
      url: "/places",
      data: {place: { name, latitude, longitude, description, google_places_id }},
      remote: true,
      success(data) {}
    });

  

  }

  

  function addMarker(props) {
    var marker = new google.maps.Marker({
      position: props.geometry.location, 
      map: map,
      draggable:true,
      // title:"Drag me!"
    })

    var infoWindow = new google.maps.InfoWindow({
      content: `<h1>${props.name}</h1><p>${props.formatted_address}</p>`
    })

    marker.addListener('click', function() {
      infoWindow.open(map, marker)
    })

  }

  submitForm.addEventListener('click', function() {
    var title = document.forms["routeForm"]["route_title"].value
    var description = document.forms["routeForm"]["route_description"].value
    var places = route
    
    console.log('submitting form')

    $.ajax({
      type: "POST",
      url: "/routes",
      data: { title, description, places },
      remote: true,
      success(data) {}
    });
  })
  
  }

  export default initSearch

