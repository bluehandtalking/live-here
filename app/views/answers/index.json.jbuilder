json.array!(@answers) do |answer|
  json.extract! answer, :id, :answer, :question_set_id
  json.url answer_url(answer, format: :json)
end
