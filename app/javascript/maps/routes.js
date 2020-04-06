window.initMap = function(route_array) {
    var route = route_array
    var myCoords = new google.maps.LatLng(route[0].lat,route[0].lng);
    var mapOptions = {
        center: myCoords,
        zoom: 14
    };

    var map = new google.maps.Map(document.getElementById('map'), mapOptions);
    addAllMarkers(route)
    var directionsService = new google.maps.DirectionsService();
    var directionsDisplay = new google.maps.DirectionsRenderer();
    directionsDisplay.setMap(map)

    document.getElementById("get_directions").addEventListener("click", function(){
        calculateRoute()
    })
    

    function calculateRoute(){
        var locations = getLocations(route_array)
        var waypoints = getWaypoints(route_array)
        console.log(waypoints)
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

    function getLocations(route) {
        var locations = []
        for(var i = 0; i < route.length; i++) {
            locations.push(new google.maps.LatLng(route[i].lat, route[i].lng))
        }
        return locations;
    }

    function getWaypoints(route){
        var waypoints = []
        for(var i = 0; i < route.length; i++) {
            waypoints.push({location: new google.maps.LatLng(route[i].lat, route[i].lng), stopover: true})
        }
        return waypoints;
    }

    function addAllMarkers(route) {
        for(var i = 0; i < route.length; i++) {
            initMarker(route[i])
        }
    }

    function initMarker(place){
        var myCoords = new google.maps.LatLng(place.lat, place.lng);
        var marker = new google.maps.Marker({
            position: myCoords,
            map: map
        })
    }
}
export default initMap
