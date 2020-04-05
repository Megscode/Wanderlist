class Place < ApplicationRecord
  has_many :routes

  def self.create_or_find_many(places)
    array_of_places = []
    places.each do |k, place|
      existing_place = Place.find_by(google_places_id: place['google_places_id'])
      
      if !existing_place.nil? 
        array_of_places.push(existing_place)
      else
        array_of_places.push(Place.create(name: place['name'], description: place['description'], latitude: place['latitude'].to_f, longitude: place['longitude'].to_f, google_places_id: place['google_places_id']))
      end
    end
    array_of_places
  end
end
