Rails.application.routes.draw do
  devise_for :users
  root 'top#index'
  resources :tops
  resources :books do
    collection do
      get 'search'
    end
  end
end
