Set5::Application.routes.draw do
  
 
  match 'pics/allUsers' => 'users#index'
  match 'pics/user/:id' => 'Users#show'

  resources :users

  
end
