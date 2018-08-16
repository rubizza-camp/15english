# frozen_string_literal: true

require "administrate/base_dashboard"

class SubTestDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    subject_sub_tests: Field::HasMany,
    subjects: Field::HasMany,
    pages: Field::HasMany,
    text_questions: Field::HasMany,
    image_questions: Field::HasMany,
    radio_questions: Field::HasMany,
    radio_image_questions: Field::HasMany,
    radio_image_text_questions: Field::HasMany,
    id: Field::Number,
    title: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :title,
    :subjects,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :title,
    :subjects,
    :text_questions,
    :image_questions,
    :radio_questions,
    :radio_image_questions,
    :radio_image_text_questions,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :title,
    :subjects,
    :text_questions,
    :image_questions,
    :radio_questions,
    :radio_image_questions,
    :radio_image_text_questions,
  ].freeze

  # Overwrite this method to customize how sub tests are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(sub_test)
    "#{sub_test.title}"
  end
end
