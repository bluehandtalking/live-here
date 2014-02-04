json.array!(@quizzes) do |quiz|
  json.extract! quiz, :id, :name, :type
  json.url quiz_url(quiz, format: :json)
end
