class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.references :game, index: true

      t.timestamps
    end
  end
end
