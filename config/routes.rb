Rails.application.routes.draw do
  namespace :api do
    get '/users' => 'users#index'
    post '/users' => 'users#create'
    get '/users/:id' => 'users#show'
    patch '/users/:id' => 'users#update'
    delete '/users/:id' => 'users#destroy'

    post '/followings' => 'followings#create'

    get '/authors' => 'authors#index'
    post '/authors' => 'authors#create'
    get '/authors/:id' => 'authors#show'
    patch '/authors/:id' => 'authors#update' 

    get '/books' => 'books#index'
    post '/books' => 'books#create'
    get '/books/:id' => 'books#show'
    patch '/books/:id' => 'books#update'
    delete '/books/:id' => 'books#destroy'

    get '/inventories' => 'inventories#index'
    post '/inventories' => 'inventories#create'
    get '/inventories/:id' => 'inventories#show'
    patch '/inventories/:id' => 'inventories#update'

    get '/reviews' => 'reviews#index'
    post '/reviews' => 'reviews#create'
    get '/reviews/:id' => 'reviews#show'
    patch '/reviews/:id' => 'reviews#udpate'
    delete '/reviews/:id' => 'reviews#destroy'

    get '/book_clubs' => 'book_clubs#index'
    post '/book_clubs' => 'book_clubs#create'
    get '/book_clubs/:id' => 'book_clubs#show'
    patch '/book_clubs/:id' => 'book_clubs#update'
    delete '/book_clubs/:id' => 'book_clubs#destroy'    
  end
end
