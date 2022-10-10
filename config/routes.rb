Rails.application.routes.draw do
  resources :contractors
  resources :personal_inexistences
  resources :equal_objects
  resources :contracting_authorizations
  resources :memorandum_contractings
  resources :previous_studies
  get 'previous_studies/report'
  get 'search', to: 'search#index'
  devise_for :users
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'home#index'
end
