class Question < ActiveRecord::Base
	has_many :answers
	belongs_to :question_type
	belongs_to :medium
	belongs_to :category
end
