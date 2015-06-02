Rails.application.routes.draw do
 get "/" => "pages#index"
 get "/records" => 'pages#index'
 get "/records/new" => 'pages#new'
 get "records/:id" => 'pages#show'
 post '/records' => 'pages#create'
end
