describe Place do
  describe '.create_or_find_many' do
    it 'takes a hash of more than one place and returns an array of places' do
      place_params = {"0"=>{"name"=>"Mabley Green", "description"=>"Mabley Green Park, Lee Conservancy Rd, London E9 5HW, UK", "latitude"=>"51.54942579999999", "longitude"=>"-0.0299066", "google_places_id"=>"ChIJP7qPnA4ddkgRRaV_7Wq_jJ0"}, "1"=>{"name"=>"Wick Woodland", "description"=>"London E9, UK", "latitude"=>"51.55115310000001", "longitude"=>"-0.0242307", "google_places_id"=>"ChIJqzpx7QwddkgRN6stZJiNVhY"}}
      places = Place.create_or_find_many(place_params)
      expect(places[0]).to be_a Place
    end
  end
end