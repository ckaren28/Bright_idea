Rails.application.routes.draw do
  
  get '/' => 'sessions#new'

  # -- sessions ---
  get '/main' => 'sessions#new'
  get '/sessions/new'
  post '/sessions' => 'sessions#create'
  delete '/sessions' => 'sessions#destroy'

  # --user--
  get '/bright_ideas' => 'users#index'
  post '/users' => 'users#create'
  get '/users/:id' => 'users#show'

  # --idea--
  post '/ideas' => 'ideas#create'
  get '/ideas/:id' => 'ideas#show'
  delete '/ideas/:id' => 'ideas#destroy'

  # --likes---
  post '/likes' => 'likes#create'
  delete '/likes/:id' => 'likes#destroy'


end
