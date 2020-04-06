class Place < ApplicationRecord
  has_many :routes

  def self.create_array_of_many(hash_of_args)
    array_of_places = []
    hash_of_args.each do |k, args|
      array_of_places.push(Place.create_or_find_by_gplacesid(args))
    end
    array_of_places
  end

  def self.create_or_find_by_gplacesid(args) 
    existing_place = Place.find_by(google_places_id: args['google_places_id'])
      
    if !existing_place.nil? 
      existing_place
    else
      Place.create(name: args['name'], description: args['description'], latitude: args['latitude'].to_f, longitude: args['longitude'].to_f, google_places_id: args['google_places_id'])
    end
  end
end
