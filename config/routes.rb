Rails.application.routes.draw do
  resources :qualifications
  resources :searches
  root 'static#home'
  resources :courses
  get "/about" => "static#about"
  devise_for :users
  resources :users, only: [:index, :show]
end