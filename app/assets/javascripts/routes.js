function initMap(lat, lng) {
    var myCoords = new google.maps.LatLng(lat, lng);
    var mapOptions = {
        center: myCoords,
        zoom: 14
    };

    map = new google.maps.Map(document.getElementById('map'), mapOptions);
}

function initMarker(lat, lng){
    var myCoords = new google.maps.LatLng(lat, lng);
    var marker = new google.maps.Marker({
        position: myCoords,
        map: map
    })
}
function initDirections(placesArray){
    var directionsService = new google.maps.DirectionsService;
    var directionRequest = new google.maps.DirectionsRequest()
    directionsService.route()
    
}

