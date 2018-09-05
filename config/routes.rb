Rails.application.routes.draw do
  devise_for :users
    root 'pvs#index'
  resources :pvs, only: [:index, :create]
end
