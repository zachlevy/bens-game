class AddQuestionTypeToQuestion < ActiveRecord::Migration
  def change
    add_reference :questions, :questiontype, index: true
  end
end
