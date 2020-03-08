Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :prefectures, only: [:index, :show]
  resources :manufactures, only: [:index, :show]
  resources :bodytypes, only: [:index, :show]
  resources :favorites, only: [:create, :destroy]
  resources :bikes do
    resources :reservations, only: [:show, :create]
    collection do
      get :search, to: 'bikes#search'
      get :popular, to: 'bikes#popular'
      get :new_arrival, to: 'bikes#new_arrival'
      get :old, to: 'bikes#old'
      get :favorite, to: 'bikes#favorite'
    end
  end
end
