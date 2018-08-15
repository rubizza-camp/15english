require "administrate/base_dashboard"

class ImageQuestionDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    image: Field::HasOne,
    pages: Field::HasMany,
    revisions: Field::HasMany,
    practices: Field::HasMany,
    theories: Field::HasMany,
    id: Field::Number,
    title: Field::String,
    text: Field::String,
    answer: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :image,
    :pages,
    :revisions,
    :practices,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :image,
    :pages,
    :revisions,
    :practices,
    :theories,
    :id,
    :title,
    :text,
    :answer,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :image,
    :pages,
    :revisions,
    :practices,
    :theories,
    :title,
    :text,
    :answer,
  ].freeze

  # Overwrite this method to customize how image questions are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(image_question)
  #   "ImageQuestion ##{image_question.id}"
  # end
end
