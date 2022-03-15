Rails.application.routes.draw do
  resources :articles
  root 'pages#home'

  get 'signup', to: 'users#new'
  resources :users, except: [:new]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete'login', to: 'sessions#destroy'
end
