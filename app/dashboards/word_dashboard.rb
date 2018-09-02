require "administrate/base_dashboard"

class WordDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    lesson: Field::BelongsTo,
    id: Field::Number,
    en: Field::String,
    ru: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    usage: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :lesson,
    :id,
    :en,
    :ru,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :lesson,
    :id,
    :en,
    :ru,
    :created_at,
    :updated_at,
    :usage,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :lesson,
    :en,
    :ru,
    :usage,
  ].freeze

  # Overwrite this method to customize how words are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(word)
  #   "Word ##{word.id}"
  # end
end
