class AddGameToUserGame < ActiveRecord::Migration
  def change
    add_reference :user_games, :game, index: true
  end
end
