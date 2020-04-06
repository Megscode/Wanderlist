class AddPhotoUrlToRoutes < ActiveRecord::Migration[6.0]
  def change
    add_column :routes, :photo_url, :string
  end
end
