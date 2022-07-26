Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :users
  resources :anas
  resources :anecdotes do
    member do
      put "like", to: "anecdotes#upvote"
      put "dislike", to: "anecdotes#downvote"
    end
  end
  resources :tags, :except => [:edit]

  get '/tags' => 'tags#follow'
  
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end