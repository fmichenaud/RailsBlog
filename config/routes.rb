Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: :registrations}
  get 'home/index'

  resources :articles
  resources :users, only: [:index, :show, :destroy]
  
  authenticate :user do
    resources :articles, only: [:new, :create, :edit, :update, :destroy]
  end
  resources :articles, only: [:index, :show]

  resources :articles do 
    resources :comments
  end
  
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
