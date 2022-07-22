Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :users, :except => [:edit]
  resources :anas, :except => [:index]
  resources :anecdotes
  resources :tags, :only => [:index, :new, :create, :destroy]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end