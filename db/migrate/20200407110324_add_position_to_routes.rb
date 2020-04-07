class AddPositionToRoutes < ActiveRecord::Migration[6.0]
  def change
    add_column :routes, :starting_lat, :decimal
    add_column :routes, :starting_lng, :decimal
  end
end
