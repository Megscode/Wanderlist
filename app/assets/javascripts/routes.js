function initMap(lat, lng) {
    var myCoords = new google.maps.LatLng(lat, lng);
    var mapOptions = {
        center: myCoords,
        zoom: 14
    };

    var map = new google.maps.Map(document.getElementById('map'), mapOptions);

    // var marker = new google.maps.Marker({
    //     position: myCoords,
    //     map: map
    // });

}
function initMarker(lat, lng){
    var myCoords = new google.maps.LatLng(lat, lng)
    var map = new google.maps.Map(document.getElementById('map'), mapOptions);
    var marker = new google.maps.Marker({
        position: myCoords,
        map: map
    });
};
