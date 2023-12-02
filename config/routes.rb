Rails.application.routes.draw do
  # # routes for users through devise:
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "pages#home"

  get "home", to: "pages#home"

  get "free-workshop-arduino-for-kids", to: "pages#workshopArduino"

  resources :pages, param: :title

  get "courses/new", to: "courses#new"

  get "courses/:id", to: "courses#show"

  post "courses", to: "courses#create"






end
