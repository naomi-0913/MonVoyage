Rails.application.routes.draw do
  devise_for :users
  root 'memories#index'
  resources :memories do
    resources :likes, only:[:create, :destroy]
  end
  resources :users , only:[:show]
end
