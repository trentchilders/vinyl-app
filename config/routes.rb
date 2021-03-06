Rails.application.routes.draw do
  devise_for :users
 root 'pages#index'
 get "/" => "pages#index"
 get "/records" => 'pages#index'
 get "/records/new" => 'pages#new'
 get "records/:id" => 'pages#show'
 post '/records' => 'pages#create'
 get '/records/:id/edit' => 'pages#edit' 
 patch "records/:id" => 'pages#update'
 delete '/records/:id' => 'pages#destroy'
 post '/search' => 'pages#search'
 post '/cart' => 'carted_products#create'
 get '/orders/:id' => 'orders#show'
 get '/cart' => 'carted_products#index'
 post '/orders' => 'orders#create'
 delete '/cart/:id' => 'carted_products#destroy'

 get '/suppliers' => 'suppliers#index'
 get "/suppliers/new" => 'suppliers#new'
 post '/suppliers' => 'suppliers#create'
 get 'suppliers/:id' => 'suppliers#show', as: :supplier
 get 'suppliers/:id/edit' => 'suppliers#edit'
 patch 'suppliers/:id' => 'suppliers#update'
 delete 'suppliers/:id' => 'suppliers#destroy'
end
