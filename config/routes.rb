Rails.application.routes.draw do

  resources :statuses

  get '/index' => 'user#index'

  get ':username/friends' => 'user#friends'

  get '/add_friend' => 'user#add_friend'

  get '/find_friends' => 'user#find_friends'

  get '/accept_request' => 'user#accept_request'

  get '/deny_request' => 'user#deny_request'

  get '/voting' => 'user#votes'

  get ':username/friend_requests' => 'user#friend_requests'

  get ':username' => 'user#show', as: :user

  get 'welcome/index'

  devise_for :users

  root 'welcome#index'


end
