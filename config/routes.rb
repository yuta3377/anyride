Rails.application.routes.draw do
  devise_for :users
  root 'bikes#index'
  resources :users
  resources :bikes
  resources :prefectures, only: [:index, :show]
  resources :manufactures, only: [:index, :show]
  resources :bodytypes, only: [:index, :show]
end
