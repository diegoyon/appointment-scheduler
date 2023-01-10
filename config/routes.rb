Rails.application.routes.draw do
  
  resources :coaches do 
    resources :appointments
  end
  
  resources :users do 
    resources :appointments
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
end
