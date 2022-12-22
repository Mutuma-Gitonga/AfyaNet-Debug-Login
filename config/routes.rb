Rails.application.routes.draw do
  resources :reviews
  resources :medical_records
  resources :doctors
  resources :messages
  resources :appointments
  # resources :patients
  
  root "application#index"

  post "/patient_signup", to: "patients#create" 

end