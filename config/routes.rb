Rails.application.routes.draw do
  resources :previous_studies
  get 'previous_studies/report'
  get 'search', to: 'search#index'
  resources :competences
  resources :competency_curriculum_designs
  resources :curriculum_design_profiles
  resources :curriculum_designs
  resources :programs
  resources :supervisors
  resources :contract_supervisors
  resources :contract_movements
  resources :payments
  resources :contract_requirements
  resources :contract_statuses
  resources :contracts
  devise_for :users
  resources :contractor_professions
  resources :phones
  resources :emails
  resources :pensions
  resources :healths
  resources :contractors
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'home#index'
end
