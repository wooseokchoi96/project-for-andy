Rails.application.routes.draw do
  resources :doctors
  resources :patients

  get "/patients/:id/dog", to: "patients#dog", as: "dog"

  resources :appointments
end
