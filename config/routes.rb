Rails.application.routes.draw do
  root "emails#index"
  post '/emails', to: 'emails#create'
  devise_for :users
  resources :emails

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
