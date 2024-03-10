Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/customers/new', to: 'customers#new'
  post '/customers', to: 'customers#create'
  # Defines the root path route ("/")
  # root "articles#index"
end