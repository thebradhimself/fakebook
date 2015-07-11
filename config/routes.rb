Rails.application.routes.draw do
  get ':username' => 'user#show', as: :user

  get 'welcome/index'

  devise_for :users

  root 'welcome#index'

end
