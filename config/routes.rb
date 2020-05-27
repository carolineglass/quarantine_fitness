Rails.application.routes.draw do
  resources :splits
  resources :exercises
  resources :routines
  resources :users do
    resources :comments
    resources :routines do
      resources :comments
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
