window.getLocation = function(){
  console.log("loading")
  ('location-button').click(function(){
  
    if(nevigator.geolocation)
      nevigator.geolocation.getCurrentPosition(function(position){
        console.log(position);
      });
    else
      console.log("geolocation is not supported")
  });
}
export default getLocation