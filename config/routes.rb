Rails.application.routes.draw do
  resources :autocomplete_things
  resources :authors
  resources :dynamic_things
  resources :things
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
