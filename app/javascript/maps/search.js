 window.initMap = function() {
  console.log("loading")
  var mapOptions = {zoom: 14, center: {lat: 51.5428627, lng: -0.039212}, mapTypeId: 'roadmap'}

  var map = new google.maps.Map(
    document.getElementById('map'), mapOptions);

  // refreshPoints()

  var input = document.getElementById('pac-input');
  var searchBox = new google.maps.places.SearchBox(input);
  map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);
  var addPlace = document.getElementById('add-marker')

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

      addPlace.addEventListener('click', function() {
        var newPlace = places[0]
        console.log('this is making a marker for ')
        addMarker(newPlace)
        route.push(newPlace)
        createPlace(newPlace)
      })

      if (place.geometry.viewport) {
        // Only geocodes have viewport.
        bounds.union(place.geometry.viewport);
      } else {
        bounds.extend(place.geometry.location);
      }

    });
    map.fitBounds(bounds);

    
  });

  function createPlace(props) {
    var name = props.name;
    var latitude = props.geometry.location.lat;
    var longitude = props.geometry.location.lng;
    var description = props.formatted_address;
    
    $.ajax({
      type: "POST",
      url: "/places",
      data: {place: { name, latitude, longitude, description }},
      remote: true,
      success(data) {}
    });

    

  }

  function populatePlace(props) {
    document.getElementById('place').innerHTML = props.name
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
  // function refreshPoints() {
  //   for(var i = 0; i < itinerary.points.length; i++) {
  //     addMarker(itinerary.points[i])
  //   }
  }

  export default initMap