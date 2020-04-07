window.initMapNearBy= function(lat, lng){
  var myCoords = new google.maps.LatLng(lat, lng);
  console.log(myCoords);
  var mapOptions = {
      center: myCoords,
      zoom: 14
  };
  console.log(mapOptions);
  var map = new google.maps.Map(document.getElementById('map-nearby'), mapOptions);
  var marker = new google.maps.Marker({
      position: myCoords,
      map: map
  })
}
export default initMapNearBy



