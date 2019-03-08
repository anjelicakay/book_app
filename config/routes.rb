Rails.application.routes.draw do
  namespace :api do
    get '/users' => 'users#index'
    post '/users' => 'users#create'
    get '/users/:id' => 'users#show'
    patch '/users/:id' => 'users#update'
    delete '/users/:id' => 'users#destroy'

    get '/authors' => 'authors#index'
    post '/authors' => 'authors#create'
    get '/authors/:id' => 'authors#show'
    patch '/authors/:id' => 'authors#update' 

    get '/books' => 'books#index'
    post '/books' => 'books#create'
    get '/books/:id' => 'books#show'
    patch '/books/:id' => 'books#update'
    delete '/books/:id' => 'books#destroy' 
  end
end
