Rails.application.routes.draw do
  resources :exercises
  resources :routines
  resources :users
  resources :splits
  resources :comments
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
