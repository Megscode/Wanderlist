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
    document.getElementById("get_directions").addEventListener("click", function(){
        calculateRoute()
    })
}
locations =[]
waypoints =[]
function calculateRoute(){
    var request = {
        origin: locations[0],
        destination: locations[locations.length-1],
        waypoints: waypoints.slice(1, -1),
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
function addWaypoints(lat, lng){
    locations.push(new google.maps.LatLng(lat, lng))
    waypoints.push({location: new google.maps.LatLng(lat, lng), stopover: true})
}

function initMarker(lat, lng){
    var myCoords = new google.maps.LatLng(lat, lng);
    var marker = new google.maps.Marker({
        position: myCoords,
        map: map
    })
}