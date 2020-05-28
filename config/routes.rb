Rails.application.routes.draw do
  resources :exercises
  resources :routines
  resources :users
  resources :splits
  resources :comments
  
  get '/sessions/new', to: 'sessions#new', as: 'new_login'
  post '/sessions', to: 'sessions#create', as: 'login'
  delete '/sessions', to: 'sessions#destroy', as: 'logout'

  get '/about', to: 'routines#about', as: 'about'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
