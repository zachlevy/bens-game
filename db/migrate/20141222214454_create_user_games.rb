class CreateUserGames < ActiveRecord::Migration
  def change
    create_table :user_games do |t|

      t.timestamps
    end
  end
end
