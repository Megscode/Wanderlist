class Route < ApplicationRecord
  belongs_to :user
  has_many :votes
  scope :hottest, -> { order(hot_score: :desc) }

  def upvotes
    votes.sum(:upvote)
  end

  def calc_hot_score
    points = upvotes
    time_ago_in_hours = ((Time.now - created_at) / 3600).round
    score = hot_score(points, time_ago_in_hours)
  
    update_attributes(points: points, hot_score: score)
  end
  
  private
  
  def hot_score(points, time_ago_in_hours, gravity = 1.8)
    (points - 1) / (time_ago_in_hours + 2) ** gravity
  end
end
