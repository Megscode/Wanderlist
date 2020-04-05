describe Place do
  describe '.create_or_find_many' do

    before do
      @place_params = {"0"=>{"name"=>"Test place", "description"=>"Test description", "latitude"=>"51.54942579999999", "longitude"=>"-0.0299066", "google_places_id"=>"id1"}, "1"=>{"name"=>"Test Place 2", "description"=>"Test description", "latitude"=>"51.55115310000001", "longitude"=>"-0.0242307", "google_places_id"=>"id2"}}
    end

    it 'takes a hash of more than one place and returns an array of places' do
      places = Place.create_or_find_many(@place_params)
      expect(places[0]).to be_a Place
      expect(places.length).to eq 2
    end

    it 'does not allow duplicate google place ids but instead returns an existing place' do
      place = Place.create(name: 'Test place', description: 'Test description', latitude: 51.54942579999999, longitude: -0.0299066, google_places_id: 'id1')
      places = Place.create_or_find_many(@place_params)
      expect(places[0]).to eq place
    end
    
  end
end