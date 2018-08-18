require "administrate/base_dashboard"

class TextQuestionDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    answers: Field::HasMany,
    questionable: Field::Polymorphic,
    id: Field::Number,
    title: Field::String,
    image: Field::String,
    text: Field::String,
    answer: Field::String,
    first_option: Field::String,
    second_option: Field::String,
    third_option: Field::String,
    type: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :questionable,
    :id,
    :title,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :questionable,
    :id,
    :title,
    :image,
    :text,
    :answer,
    :first_option,
    :second_option,
    :third_option,
    :type,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :questionable,
    :title,
    :image,
    :text,
    :answer,
    :first_option,
    :second_option,
    :third_option,
    :type,
  ].freeze

  # Overwrite this method to customize how text questions are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(text_question)
  #   "TextQuestion ##{text_question.id}"
  # end
end
