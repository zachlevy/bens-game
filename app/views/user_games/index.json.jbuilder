json.array!(@user_games) do |user_game|
  json.extract! user_game, :id
  json.url user_game_url(user_game, format: :json)
end
