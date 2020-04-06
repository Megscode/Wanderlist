class AddPlacesIdToPlaces < ActiveRecord::Migration[6.0]
  def change
    add_column :places, :google_places_id, :string
  end
end
