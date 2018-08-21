# frozen_string_literal: true

Rails.application.routes.draw do
  root "welcome#index"
  namespace :admin do
      resources :users
      resources :courses
      resources :subjects
      resources :lessons
      resources :questions
      resources :radio_image_text_questions
      resources :radio_image_questions
      resources :image_questions
      resources :radio_questions
      resources :text_questions
      resources :sub_tests
      resources :test_levels

      root to: "users#index"
    end

  get "/parse_answers" => "radio_questions#parse_answers"
  resources :radio_questions
  get "/:locale" => "welcome#index"

  scope ":locale", locale: /en|ru/ do
    devise_for :users, skip: :omniauth_callbacks
    resources :users, only: [:show]
    resources :lessons, only: [:show] do
      resources :questions
    end
    resources :subjects
    resources :courses
    resources :cards
    resources :answers, only: [:show, :index, :create, :new]
    resources :radio_questions, only: [:show, :index, :create, :new]
    resources :text_questions
    post "/answer" => "answers#create", as: :create_answer
  end
  devise_for :users, only: :omniauth_callbacks, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  mount PolicyManager::Engine => "/policies"
end
