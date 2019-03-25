Rails.application.routes.draw do
  namespace :api do

    post "/sessions" => "sessions#create"
    
    get '/users' => 'users#index'
    post '/users' => 'users#create'
    get '/users/:id' => 'users#show'
    patch '/users/:id' => 'users#update'
    delete '/users/:id' => 'users#destroy'

    # get '/followings' => 'followings#index'
    post '/followings' => 'followings#create'
    # delete '/followings/:id' => 'followings#destroy'

    get '/authors' => 'authors#index'
    post '/authors' => 'authors#create'
    get '/authors/:id' => 'authors#show'
    patch '/authors/:id' => 'authors#update' 
    delete '/authors/:id' => 'authors#destroy'


    get '/books' => 'books#index'
    post '/books' => 'books#create'
    get '/books/:id' => 'books#show'
    patch '/books/:id' => 'books#update'
    delete '/books/:id' => 'books#destroy'

    get '/inventories' => 'inventories#index'
    post '/inventories' => 'inventories#create'
    get '/inventories/:id' => 'inventories#show'
    patch '/inventories/:id' => 'inventories#update'
    delete '/inventories/:id' => 'inventories#destroy'


    get '/reviews' => 'reviews#index'
    post '/reviews' => 'reviews#create'
    get '/reviews/:id' => 'reviews#show'
    patch '/reviews/:id' => 'reviews#update'
    delete '/reviews/:id' => 'reviews#destroy'
    
    get '/memberships' => 'memberships#index'   
    post '/memberships' => 'memberships#create'   
    get '/memberships/:id' => 'memberships#show'   
    delete '/memberships/:id' => 'memberships#destroy'

    get '/book_clubs' => 'book_clubs#index'
    post '/book_clubs' => 'book_clubs#create'
    get '/book_clubs/:id' => 'book_clubs#show'
    patch '/book_clubs/:id' => 'book_clubs#update'
    delete '/book_clubs/:id' => 'book_clubs#destroy' 
    
    get '/messages' => 'messages#index'
    post '/messages' => 'messages#create'

    get '/google/books' => 'books#search'
    get '/google/book_find/:api_ref' => 'books#pull_book_info'

  end
end
