Rails.application.routes.draw do

  devise_for :users, controllers: {
      sessions: 'users/sessions'
    }
  get 'products/search'
  get 'products/:id/buy', to: "products#buy", as: "product_buy"
  get 'products/buyed'
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "products#index"
end
