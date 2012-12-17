Set5::Application.routes.draw do
  
  match 'pics/allUsers' => 'users#index'
  match 'pics/user/:id' => 'Users#show'
  match 'quotebook' => 'users#index'
  
  resources :comments

  resources :photos

  resources :users

end
