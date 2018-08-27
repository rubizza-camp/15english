# frozen_string_literal: true

Rails.application.routes.draw do
  root "static_pages#index"
  namespace :admin do
      resources :users
      resources :courses
      resources :subjects
      resources :lessons
      resources :radio_image_text_questions
      resources :radio_image_questions
      resources :image_questions
      resources :radio_questions
      resources :text_questions
      resources :sub_tests
      resources :test_levels
      resources :cards

      root to: "users#index"
      mount PolicyManager::Engine => "/policies"
    end

  get "/:locale" => "static_pages#index"

  scope ":locale", locale: /en|ru/ do
    devise_for :users, skip: :omniauth_callbacks
    resources :users, only: [:show] do
      get "level", on: :collection
    end
    resources :subjects
    resources :courses, only: [:index, :show]
    resources :lessons, only: [:show, :index]
    resources :questions
    resources :cards
    resources :answers, only: [:show, :index, :create, :new]
    resources :radio_questions, only: [:show, :index, :create, :new]
    resources :text_questions
    resources :users
    post "/answer" => "answers#create", as: :create_answer
    post "/choose_level" => "courses#choose_level"
  end

  devise_for :users, only: :omniauth_callbacks, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
end
