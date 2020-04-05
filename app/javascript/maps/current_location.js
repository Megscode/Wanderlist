var getLocation = document.getElementById('location-button') 
        getLocation.addEventListener('click', function() {
        console.log('this is clicking')
        if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(function(position){
                  console.log(position);
                  axios.get( "http://maps.googleapis.com/maps/api/geocode/json?latlng="+ position.coords.latitude + "," + position.coords.longitude +"&sensor=false", function(data) {
                    console.log(data);
                  })
                });
            }
          });
