Rails.application.routes.draw do
  devise_for :users
  root 'memory#index'
  resources :memory
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
