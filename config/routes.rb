Rails.application.routes.draw do
 get "/" => "pages#home"
 get "/all" => 'pages#all'
end
