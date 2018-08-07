# frozen_string_literal: true

Rails.application.routes.draw do
  get "/:locale" => "welcome#index"
  root "welcome#index"
  scope ":locale", locale: /en|ru/ do
    devise_for :users
    resources :users, only: [:show]
    resources :courses
    get "static_pages/admin_dashboard"
  end
end
