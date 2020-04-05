function initMap(lat, lng) {
    var myCoords = new google.maps.LatLng(lat, lng);
    var mapOptions = {
        center: myCoords,
        zoom: 14
    };

    map = new google.maps.Map(document.getElementById('map'), mapOptions);
    directionsService = new google.maps.DirectionsService();
    directionsDisplay = new google.maps.DirectionsRenderer();
    directionsDisplay.setMap(map)
    origin = new google.maps.LatLng(51.501564, -0.141944)
    destination = new google.maps.LatLng(51.500792, -0.124613)
    waypoint = [{location: new google.maps.LatLng(51.499581, -0.127309), stopover: true}]
    document.getElementById("get_directions").addEventListener("click", function(){
        console.log("something")
        calculateRoute()
    })
}

function calculateRoute(){
    var request = {
        origin: origin,
        destination: destination,
        waypoints: waypoint,
        travelMode: 'WALKING'
    };
    directionsService.route(request, function(result, status){
        if(status === "OK"){
            directionsDisplay.setDirections(result)
            }
        else{
            window.alert('Directions request failed due to ' + status);
        }
    })
}

function initMarker(lat, lng){
    var myCoords = new google.maps.LatLng(lat, lng);
    var marker = new google.maps.Marker({
        position: myCoords,
        map: map
    })
}