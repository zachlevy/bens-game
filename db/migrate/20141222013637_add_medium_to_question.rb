class AddMediumToQuestion < ActiveRecord::Migration
  def change
    add_reference :questions, :medium, index: true
  end
end
