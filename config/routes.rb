Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      #nest patients under users with do end block
      resources :users
      resources :patients
      resources :clinics
      resources :appointments
      resources :conditions
      resources :medications
      post '/auth', to: 'auth#create'
      get '/current_user', to: 'auth#show'
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
