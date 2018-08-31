# frozen_string_literal: true

Rails.application.routes.draw do
  root "static_pages#index"
  get "level", to: "static_pages#choose_level"
  namespace :admin do
      resources :users
      resources :courses
      resources :subjects
      resources :lessons
      resources :dictionaries
      resources :words
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
    resources :users, only: [:show]
    resources :dictionaries, only: [:show]
    resources :subjects
    resources :courses
    resources :lessons, only: [:show, :index]
    resources :questions
    resources :cards
    resources :answers, only: [:show, :index, :create, :new]
    resources :radio_questions, only: [:show, :index, :create, :new]
    resources :text_questions
    resources :test_level_sessions
    resources :users do
      get "/map" => "static_pages#map"
    end
    post "/answer" => "answers#create", as: :create_answer
  end

  devise_for :users, only: :omniauth_callbacks, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
end
