Rails.application.routes.draw do
  root to: 'homes#index'
  devise_for :users
  resources :homes, only: [:index, :show]
  resources :rooms, only: [:new, :create] do
    resources :messages, only: [:index, :create]
  end
end
