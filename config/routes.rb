Rails.application.routes.draw do
  get '/:locale' => 'welcome#index'
  root 'welcome#index'
  scope ':locale', locale: /en|ru/ do
    devise_for :users
  end
end
