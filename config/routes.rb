Rails.application.routes.draw do
  resources :reviews
  resources :medical_records
  resources :doctors
  resources :messages
  resources :appointments
  resources :specialties
  # resources :patients
  
  root "application#index"

  post "/patient_signup", to: "patients#create" 
  post "/patient_login", to: "patients_sessions#create" 
  delete "/patient_logout", to: "patients_sessions#destroy" 
  get "/patient_profile", to: "patients#show"
  patch "/patient_profile", to: "patients#update"
  delete "/patient_profile", to: "patients#destroy"

  
  post "/doctor_signup", to: "doctors#create" 
  post "/doctor_login", to: "doctors_sessions#create" 
  get "/doctor_profile", to: "doctors#show"
  patch "/doctor_profile", to: "doctors#update"
  delete "/doctor_profile", to: "doctors#destroy"

  get "/all_specialties", to: "specialties#index"
end