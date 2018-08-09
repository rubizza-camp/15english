json.extract! image_question, :id, :title, :image, :text, :answer, :created_at, :updated_at
json.url image_question_url(image_question, format: :json)
