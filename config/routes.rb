Rails.application.routes.draw do
  resources :resort_activities
  resources :activities
  resources :reservations
  resources :resorts
  resources :users
  get '/register', to: "users#new", as: "register_path"
  post '/register', to: "users#create"

  get '/login', to: "auth#login", as: "login_path"
  post '/login', to: "auth#verify"
  get '/logout', to: "auth#logout", as: "logout"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
