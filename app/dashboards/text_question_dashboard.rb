# frozen_string_literal: true

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
    questionable: Field::Polymorphic.with_options(
      classes: [Lesson, SubTest, TestLevel]
      ),
    lesson: Field::BelongsTo,
    id: Field::Number,
    title: Field::String,
    image: Field::Carrierwave.with_options(
      image: :standard,
      image_on_index: true,
      ),
    remove_image: Field::Boolean,
    text: TrixField,
    correct_answer: Field::String,
    first_option: Field::String,
    second_option: Field::String,
    third_option: Field::String,
    type: Field::String,
    position: Field::Number
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :position,
    :title,
    :questionable,
    :image
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :position,
    :questionable,
    :title,
    :text,
    :first_option,
    :second_option,
    :correct_answer,
    :image
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :position,
    :questionable,
    :title,
    :image,
    :remove_image,
    :text,
    :first_option,
    :second_option,
    :correct_answer,
    :type
  ].freeze

  # Overwrite this method to customize how text questions are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(text_question)
  #   "TextQuestion ##{text_question.id}"
  # end
end
