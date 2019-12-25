Rails.application.routes.draw do
  root "products#index"

  get '/products/:id', to: 'products#show', as: 'product'
  get '/products', to: 'products#index'
end

# $ rails routes -c products
