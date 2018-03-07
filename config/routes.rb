Rails.application.routes.draw do
  devise_for :users

  get 'welcome/index'

  root 'users#show'

  resources :users do
    resources :items, only: [:create]
  end

end
