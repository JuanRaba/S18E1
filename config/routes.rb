Rails.application.routes.draw do

  devise_for :users, controllers: {
      sessions: 'users/sessions'
    }
  get 'products/search'
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "products#search"
end
