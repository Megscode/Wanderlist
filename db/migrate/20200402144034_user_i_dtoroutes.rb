class UserIDtoroutes < ActiveRecord::Migration[6.0]
  def change
    add_reference :routes, :users, index: true, foreign_key: true
  end
end
