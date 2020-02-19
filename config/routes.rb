Rails.application.routes.draw do
  devise_for :users
  root 'bikes#index'
  resources :users
  resources :bikes
end
