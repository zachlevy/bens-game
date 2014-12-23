class User < ActiveRecord::Base
  has_many :user_games
  has_many :answers
end
