json.array!(@questions) do |question|
  json.extract! question, :id, :query, :topic_id
  json.url question_url(question, format: :json)
end
