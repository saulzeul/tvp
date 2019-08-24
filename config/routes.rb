Rails.application.routes.draw do
  resources :users
  resources :roles
  resources :areas
  post 'user_token' => 'user_token#create'
  get 'user_current' => 'users#current'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
