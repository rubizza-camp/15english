json.extract! question, :id, :image_questions_id, :text_questions_id, :radio_image_questions_id, :radio_questions_id, :radio_image_text_questions_id, :created_at, :updated_at
json.url question_url(question, format: :json)
