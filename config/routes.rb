Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  get 'users/update'
  devise_for :users
  root to: 'homes#top'
  resources :books
  resources :users
end
