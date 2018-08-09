json.extract! text_question, :id, :title, :phrase, :text, :answer, :created_at, :updated_at
json.url text_question_url(text_question, format: :json)
