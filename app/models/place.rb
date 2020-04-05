class Place < ApplicationRecord
  has_many :routes

  def self.create_or_find_many(places)
    places.each do |k, place|
      places.push(Place.create(name: place['name'], description: place['description'], latitude: place['latitude'].to_f, longitude: place['longitude'].to_f, google_places_id: place['google_places_id']))
    end
  end
end
