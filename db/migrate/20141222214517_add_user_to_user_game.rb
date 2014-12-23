class AddUserToUserGame < ActiveRecord::Migration
  def change
    add_reference :user_games, :user, index: true
  end
end
