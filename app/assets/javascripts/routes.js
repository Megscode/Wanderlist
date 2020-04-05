function initMap(lat, lng) {
    var myCoords = new google.maps.LatLng(lat, lng);
    var mapOptions = {
        center: myCoords,
        zoom: 14
    };

    map = new google.maps.Map(document.getElementById('map'), mapOptions);


function initDirections(){
    var directionsService = new google.maps.DirectionsService();
    var directionsDisplay = new google.maps.DirectionsRenderer();
    directionsDisplay.setMap(map)
    origin = new google.maps.LatLng(51.501564, -0.141944)
    destination = new google.maps.LatLng(51.500792, -0.124613)
    waypoint = new google.maps.LatLng(51.499581, -0.127309) 
}
function calculateRoute(){
    var request = {
        origin: origin,
        destination: destination,
        travelMode: 'WALKING',
        waypoints: [waypoint]
    };
    directionsService.route(request, function(result, status){
        console.log(result, status)
    })
}
}

document.getElementById("get_directions").addEventListener("click", function(){
    console.log("something")
    initDirections()
    calculateRoute()
})
function initMarker(lat, lng){
    var myCoords = new google.maps.LatLng(lat, lng);
    var marker = new google.maps.Marker({
        position: myCoords,
        map: map
    })
}