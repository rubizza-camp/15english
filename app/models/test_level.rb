class TestLevel < ApplicationRecord
  belongs_to :user

  has_many :pages
  has_many :text_questions, through: :pages
  has_many :image_questions, through: :pages
  has_many :radio_question, through: :pages
  has_many :radio_image_question, through: :pages
  has_many :radio_image_text_question, through: :pages
end
