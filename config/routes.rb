Rails.application.routes.draw do
  get 'favorites/create'
  get 'favorites/destroy'
  devise_for :users
  root 'bikes#index'
  resources :users
  resources :bikes
  resources :prefectures, only: [:index, :show]
  resources :manufactures, only: [:index, :show]
  resources :bodytypes, only: [:index, :show]
  resources :favorites, only: [:create, :destroy]
end
