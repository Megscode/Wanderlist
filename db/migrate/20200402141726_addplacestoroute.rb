class Addplacestoroute < ActiveRecord::Migration[6.0]
  def change
    add_column :routes, :place1_ID, :integer
    add_column :routes, :place2_ID, :integer
    add_column :routes, :place3_ID, :integer
    add_column :routes, :place4_ID, :integer
    add_column :routes, :place5_ID, :integer
    add_column :routes, :place6_ID, :integer
    add_column :routes, :place7_ID, :integer
    add_column :routes, :place8_ID, :integer
  end
end
