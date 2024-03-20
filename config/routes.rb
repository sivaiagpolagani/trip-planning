Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/customers/new', to: 'customers#new'
  post '/customers', to: 'customers#create'

  get '/customers', to: 'customers#index'

  get '/customers/:id/edit', to: 'customers#edit', as: 'edit_customer'
  patch '/customers/:id', to: 'customers#update', as: 'update_customer'
  # Defines the root path route ("/")
  # root "articles#index"
end
