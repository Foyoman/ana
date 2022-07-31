Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :users, :except => [:show, :destroy] # TODO: add show/destroy
  resources :anas, :except => [:index, :edit, :update, :destroy] # TODO: add destroy
  resources :anecdotes do
    resources :comments, :only => [:new, :create, :destroy]

    member do      
      put "like", to: "anecdotes#upvote"
      put "dislike", to: "anecdotes#downvote"
    end
  end
  resources :tags, :only => [:index, :show] # TODO: possibly add new, create, destroy
  
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end