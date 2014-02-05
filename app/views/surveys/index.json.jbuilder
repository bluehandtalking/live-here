json.array!(@surveys) do |survey|
  json.extract! survey, :id, :topic
  json.url survey_url(survey, format: :json)
end
