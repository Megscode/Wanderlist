class Route < ApplicationRecord
  belongs_to :user
  mount_uploader :picture_url, PictureUploader
end
