class AddPictureColumnToRoute < ActiveRecord::Migration[6.0]
  def change
    add_column :routes, :picture_url, :string
  end
end
