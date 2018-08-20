# frozen_string_literal: true

Rails.application.routes.draw do
  resources :dictionaries
  root "static_pages#index"
  get "level", to: "static_pages#choose_level"
  namespace :admin do
      resources :users
      resources :courses
      resources :subjects
      resources :lessons
      resources :revisions
      resources :theories
      resources :practices
      resources :radio_image_text_questions
      resources :radio_image_questions
      resources :image_questions
      resources :radio_questions
      resources :text_questions
      resources :sub_tests
      resources :test_levels

      root to: "users#index"
    end

  get "/:locale" => "static_pages#index"

  scope ":locale", locale: /en|ru/ do
    devise_for :users, skip: :omniauth_callbacks
    resources :users, only: [:show]
    resources :lessons
    resources :subjects
    resources :courses
    resources :cards
    resources :users do
      get "/map" => "static_pages#map"
    end
  end

  devise_for :users, only: :omniauth_callbacks, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  mount PolicyManager::Engine => "/policies"
end
