Rails.application.routes.draw do
  devise_for :users

  root 'users#index'

  resources :users
  resources :units do
    resources :reservations, :except => [:show, :index]
    resources :photos
  end

  resources :reservations, :only => [:show, :index]

end
