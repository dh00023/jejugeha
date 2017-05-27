Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  
  resources :posts do
    member do
      get 'search'
    end
    resources :reviews, except: [:show, :index]
  end
  
end
