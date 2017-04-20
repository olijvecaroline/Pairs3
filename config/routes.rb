Rails.application.routes.draw do


  get 'lists/index'
  post'pages/list' =>'days#create'
  root to: 'pages#home'
  get 'pages/list' => 'pages#list'
  get 'users/:id'=> 'users#show'
  devise_for :users
  resources :days
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
