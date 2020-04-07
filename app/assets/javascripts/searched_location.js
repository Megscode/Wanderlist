window.initSearchedLocation = function() {
  var input = document.getElementById('pac-input');
  var searchBox = new google.maps.places.SearchBox(input);
  document.getElementById('submit').addEventListener('click', function(){
    console.log("we just clicked our submit and this was triggered")
  });
  };
  // Listen for the event fired when the user selects a prediction and retrieve
  // more details for that place.

export default initSearchedLocation

