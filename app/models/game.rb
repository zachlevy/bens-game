class Game < ActiveRecord::Base
  has_many :user_games
  has_many :answers
  has_many :rounds
end
