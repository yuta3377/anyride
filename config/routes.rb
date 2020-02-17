Rails.application.routes.draw do
  devise_for :users
  root 'bikes#index'
  get 'bikes/show'
end
