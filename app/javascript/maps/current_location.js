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
}
export default initUserLocation