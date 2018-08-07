# frozen_string_literal: true

Rails.application.routes.draw do
  get "/:locale" => "welcome#index"
  root "welcome#index"
  # get 'welcome#subjects'
  scope ":locale", locale: /en|ru/ do
    devise_for :users
    resources :users, only: [:show]
    resources :subjects
    resources :courses
  end
end
