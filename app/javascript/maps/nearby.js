window.initMapNearBy= function(lat, lng, route_array){
  var routes = route_array
  var myCoords = new google.maps.LatLng(lat, lng);
  var mapOptions = {
      center: myCoords,
      zoom: 14
  };
  console.log(mapOptions);
  var map = new google.maps.Map(document.getElementById('map-nearby'), mapOptions);
  initCurrentLocationMarker(lat, lng)
  addAllMarkers(routes)
  function addAllMarkers(route) {
    for(var i = 0; i < route.length; i++) {
        initMarker(route[i])
    }
  }
  function initMarker(lat, lng, title){
      var myCoords = new google.maps.LatLng(lat, lng);
      var marker = new google.maps.Marker({
          position: myCoords,
          map: map
      })
      var infoWindow = new google.maps.InfoWindow({
        content: `<h1>${title}</h1>`
      })
      marker.addListener('click', function() {
        infoWindow.open(map, marker)
      })
  }
  function initCurrentLocationMarker(lat, lng){
    var myCoords = new google.maps.LatLng(lat, lng);
    var marker = new google.maps.Marker({
        position: myCoords,
        label: "Your Location",
        map: map
    })
  }
}
export default initMapNearBy