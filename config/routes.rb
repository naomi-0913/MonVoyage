Rails.application.routes.draw do
  resources :memories
  devise_for :users
  root 'memories#index'
  resources :memories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
