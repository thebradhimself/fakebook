Rails.application.routes.draw do

  resources :statuses

  get '/index' => 'user#index'

  get ':username/friends' => 'user#friends'

  get '/add_friend' => 'user#add_friend'

  get ':username' => 'user#show', as: :user

  get 'welcome/index'

  devise_for :users

  root 'welcome#index'


end
