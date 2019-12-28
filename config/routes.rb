Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'users/new', to: 'users#new', as: 'new_user'
  get '/signup', to: 'users#new'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy', as: 'session'

  resources :users, only: [:create]

  #resources :users, only: [:create]

  root "products#index"

  #resources :products

  resources :products do
    resources :comments, only: [:create]
  end
  # comments route nested within the products routes

  #get '/products', to: 'products#index'
  #get '/products/new', to: 'products#new', as: 'new_product'
  #get '/products/:id', to: 'products#show', as: 'product'
  #post '/products', to: 'products#create'
  #get '/products/:id/edit', to: 'products#edit', as: 'edit_product'
  #patch '/products/:id', to: 'products#update'
  #delete '/products/:id', to: 'products#destroy'

end

# $ rails routes -c products
# http://localhost:3000/rails/info/routes