Rails.application.routes.draw do
  
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  get 'users/search'
  root to: 'users#search'
  resources :interactions, only: :create
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
