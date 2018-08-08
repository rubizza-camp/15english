# frozen_string_literal: true

Rails.application.routes.draw do
  root "welcome#index"
  namespace :admin do
      resources :users
      resources :courses

      root to: "users#index"
    end

  get "/:locale" => "welcome#index"

  scope ":locale", locale: /en|ru/ do
    devise_for :users
    resources :users, only: [:show]
    resources :courses
  end
end
