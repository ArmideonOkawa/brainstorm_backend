Rails.application.routes.draw do
  
  post "/login", to: 'sessions#create'
  delete "/logout", to: "sessions#destroy"
  get '/logged_in', to: 'sessions#is_logged_in?'
  resources :users, only: [:show, :create]

  get "/projects", to: "projects#index"
  post "/projects", to: "projects#create"
  get "/categories", to: "categories#index"
  # resources :projects
end
