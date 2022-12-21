Rails.application.routes.draw do
  resources :reviews
  resources :medical_records
  resources :doctors
  resources :messages
  resources :appointments
  resources :patients
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
