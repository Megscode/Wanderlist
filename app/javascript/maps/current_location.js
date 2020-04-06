window.initUserLocation = function(){
  console.log(document.getElementById('get-location'))
  getLocation = document.getElementById('get-location') 
  getLocation.addEventListener('click', function() {
  console.log(getLocation)
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
      var pos = {
        lat: position.coords.latitude,
        lng: position.coords.longitude
      };
      console.log("inside the if statement")
      console.log(pos);
    })
  }
})
}
export default initUserLocation