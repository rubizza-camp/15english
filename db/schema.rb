# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_08_29_112929) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "question_id"
    t.string "answer"
    t.integer "learning_process_state_id"
    t.bigint "sub_test_session_id"
    t.index ["learning_process_state_id"], name: "index_answers_on_learning_process_state_id"
    t.index ["question_id"], name: "index_answers_on_question_id"
    t.index ["sub_test_session_id"], name: "index_answers_on_sub_test_session_id"
    t.index ["user_id"], name: "index_answers_on_user_id"
  end

  create_table "cards", force: :cascade do |t|
    t.string "image"
    t.string "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["title"], name: "index_courses_on_title"
  end

  create_table "dictionaries", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "dictionary_word_id"
    t.index ["dictionary_word_id"], name: "index_dictionaries_on_dictionary_word_id"
    t.index ["user_id"], name: "index_dictionaries_on_user_id"
  end

  create_table "dictionary_words", force: :cascade do |t|
    t.bigint "word_id"
    t.bigint "dictionary_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dictionary_id"], name: "index_dictionary_words_on_dictionary_id"
    t.index ["word_id"], name: "index_dictionary_words_on_word_id"
  end

  create_table "friendly_id_slugs", id: :serial, force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
  end

  create_table "images", force: :cascade do |t|
    t.string "title"
    t.string "imageable_type"
    t.bigint "imageable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["imageable_type", "imageable_id"], name: "index_images_on_imageable_type_and_imageable_id"
  end

  create_table "learning_process_states", id: :serial, force: :cascade do |t|
    t.bigint "lesson_id", null: false
    t.boolean "passed", default: false
    t.bigint "user_id"
    t.integer "answer_id", default: 0
    t.boolean "current", default: false
    t.index ["lesson_id"], name: "index_learning_process_states_on_lesson_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.string "title"
    t.bigint "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "word_id"
    t.index ["subject_id"], name: "index_lessons_on_subject_id"
    t.index ["word_id"], name: "index_lessons_on_word_id"
  end

  create_table "policy_manager_portability_requests", force: :cascade do |t|
    t.integer "user_id"
    t.string "state"
    t.string "attachment"
    t.string "attachment_file_name"
    t.string "attachment_file_size"
    t.datetime "attachment_content_type"
    t.string "attachment_file_content_type"
    t.datetime "expire_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_policy_manager_portability_requests_on_user_id"
  end

  create_table "policy_manager_terms", force: :cascade do |t|
    t.text "description"
    t.string "rule"
    t.string "state"
    t.datetime "accepted_at"
    t.datetime "rejected_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "policy_manager_user_terms", force: :cascade do |t|
    t.integer "user_id"
    t.integer "term_id"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state"], name: "index_policy_manager_user_terms_on_state"
    t.index ["term_id"], name: "index_policy_manager_user_terms_on_term_id"
    t.index ["user_id"], name: "index_policy_manager_user_terms_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "title"
    t.string "image"
    t.string "text"
    t.string "correct_answer"
    t.string "first_option"
    t.string "second_option"
    t.string "third_option"
    t.string "questionable_type", default: "Lesson"
    t.bigint "questionable_id"
    t.string "type"
    t.integer "position"
    t.index ["questionable_type", "questionable_id"], name: "index_questions_on_questionable_type_and_questionable_id"
  end

  create_table "sub_test_sessions", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "sub_test_id"
    t.index ["sub_test_id"], name: "index_sub_test_sessions_on_sub_test_id"
    t.index ["user_id"], name: "index_sub_test_sessions_on_user_id"
  end

  create_table "sub_tests", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subject_sub_tests", force: :cascade do |t|
    t.bigint "subject_id"
    t.bigint "sub_test_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sub_test_id"], name: "index_subject_sub_tests_on_sub_test_id"
    t.index ["subject_id"], name: "index_subject_sub_tests_on_subject_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "title"
    t.bigint "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_subjects_on_course_id"
  end

  create_table "test_levels", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "user_courses", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_user_courses_on_course_id"
    t.index ["user_id"], name: "index_user_courses_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.boolean "admin", default: false
    t.string "avatar"
    t.string "username"
    t.string "provider"
    t.string "uid"
    t.string "slug"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "words", force: :cascade do |t|
    t.string "en"
    t.string "ru"
    t.bigint "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "usage"
    t.index ["lesson_id"], name: "index_words_on_lesson_id"
  end

  add_foreign_key "answers", "questions"
  add_foreign_key "answers", "users"
  add_foreign_key "dictionaries", "dictionary_words"
  add_foreign_key "dictionaries", "users"
  add_foreign_key "dictionary_words", "dictionaries"
  add_foreign_key "dictionary_words", "words"
  add_foreign_key "lessons", "words"
  add_foreign_key "words", "lessons"
end
