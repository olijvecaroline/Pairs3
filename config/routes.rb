Rails.application.routes.draw do


  get 'lists/index'

  root to: 'pages#home'
  get 'pages/list' => 'pages#list'
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
