class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :route
  # validates :user_id, uniqueness: { scope: :route_id }
end
