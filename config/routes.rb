Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users, only: [:show]
  mount PolicyManager::Engine => "/policies"
  root "welcome#index"
end
