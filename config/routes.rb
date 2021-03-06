# frozen_string_literal: true

Rails.application.routes.draw do
  resources :quotes
  # RESTful routes
  resources :examples, except: %i[new edit]
  resources :users, only: %i[index show update]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'

  post '/quotes/' => 'quotes#create'
  get '/quotes/:id' => 'quotes#show'
  get '/quotes' => 'quotes#index'
  patch '/quotes/:id' => 'quotes#update'
  delete '/quotes/:id' => 'quotes#destroy'
end
