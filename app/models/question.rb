class Question < ActiveRecord::Base
  has_many :answers
  belongs_to :medium
  belongs_to :category
  belongs_to :question_type
end
