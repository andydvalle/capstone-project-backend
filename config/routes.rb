Rails.application.routes.draw do
  resources :medications
  resources :conditions
  resources :patients
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
