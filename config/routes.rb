Rails.application.routes.draw do
  
  resources :coaches

  # resources :appointments
  
  resources :users do
    resources :coaches
    resources :appointments
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
end
