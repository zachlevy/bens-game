json.array!(@questions) do |question|
  json.extract! question, :id, :difficulty, :questiontext, :answertext
  json.url question_url(question, format: :json)
end
