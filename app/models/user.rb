class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :votes

  def upvote(route)
    votes.create(upvote: 1, route: route)
  end

  def upvoted?(route)
    votes.exists?(upvote: 1, route: route)
  end
  
  def remove_vote(route)
    votes.find_by(route: route).destroy
  end
end

