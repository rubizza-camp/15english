require "administrate/base_dashboard"

class PageDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    revision: Field::BelongsTo,
    practice: Field::BelongsTo,
    theory: Field::BelongsTo,
    text_question: Field::BelongsTo,
    image_question: Field::BelongsTo,
    radio_question: Field::BelongsTo,
    radio_image_question: Field::BelongsTo,
    radio_image_text_question: Field::BelongsTo,
    id: Field::Number,
    image_questions_id: Field::Number,
    text_questions_id: Field::Number,
    radio_image_questions_id: Field::Number,
    radio_questions_id: Field::Number,
    radio_image_text_questions_id: Field::Number,
    revisions_id: Field::Number,
    theories_id: Field::Number,
    practices_id: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :revision,
    :practice,
    :theory,
    :text_question,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :revision,
    :practice,
    :theory,
    :text_question,
    :image_question,
    :radio_question,
    :radio_image_question,
    :radio_image_text_question,
    :id,
    :image_questions_id,
    :text_questions_id,
    :radio_image_questions_id,
    :radio_questions_id,
    :radio_image_text_questions_id,
    :revisions_id,
    :theories_id,
    :practices_id,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :revision,
    :practice,
    :theory,
    :text_question,
    :image_question,
    :radio_question,
    :radio_image_question,
    :radio_image_text_question,
    :image_questions_id,
    :text_questions_id,
    :radio_image_questions_id,
    :radio_questions_id,
    :radio_image_text_questions_id,
    :revisions_id,
    :theories_id,
    :practices_id,
  ].freeze

  # Overwrite this method to customize how pages are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(page)
  #   "Page ##{page.id}"
  # end
end
