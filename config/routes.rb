Rails.application.routes.draw do
  root 'static#home'
  resources :courses
  devise_for :users
  resources :users, only: [:index, :show]
end