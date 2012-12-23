Set5::Application.routes.draw do
  
  resources :citaziones


  resources :perlas


  match 'pics/allUsers' => 'users#index'
  match 'pics/user/:id' => 'Users#show'
  match 'quotebook' => 'users#index'
  match 'perlas' => 'perlas#new'
  
  resources :comments

  resources :photos

  resources :users

end
