Rails.application.routes.draw do


  root to: 'static_pages#new'

  resources :static_pages
  resources :users
  resources :sessions

  get 'all_users/:id', to: 'users#index', as: 'all_users'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
