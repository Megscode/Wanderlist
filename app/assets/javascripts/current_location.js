function initUserLocation(){
  console.log(document.getElementById('get-location'))
  getLocation = document.getElementById('get-location') 
  getLocation.addEventListener('click', function() {
  console.log(getLocation)
  if (navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(function(position){
            console.log(position);
            axios.get( "http://maps.googleapis.com/maps/api/geocode/json?latlng="+ position.coords.latitude + "," + position.coords.longitude +"&sensor=false", function(data) {
              console.log(data);
            })
          });
      }
    });

}