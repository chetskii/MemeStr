Rails.application.routes.draw do
  root "users#index"
  resources :users
  resources :memes

  resources :sessions, only: [:new, :create]
  delete '/logout' => 'sessions#destroy', as: :logout
  get '/about' => 'users#about', as: :about
end
