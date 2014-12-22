class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :difficulty
      t.string :questiontext
      t.string :answertext

      t.timestamps
    end
  end
end
