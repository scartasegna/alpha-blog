Rails.application.routes.draw do
  resources :articles, only: [:show]
  root 'pages#home'
end
