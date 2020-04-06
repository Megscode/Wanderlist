class AddPointsAndHotscoreToRoute < ActiveRecord::Migration[6.0]
  def change
    add_column :routes, :points, :integer, default: 1
    add_column :routes, :hot_score, :float, default: 0
  end
end
