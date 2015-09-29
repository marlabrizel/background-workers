require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web, at: '/sidekiq'
  #this needs to be password secured in real life
  
  root 'site#show'

  resources :books,  only: [:index, :create]
  resources :quotes, only: [:index, :create]
end
