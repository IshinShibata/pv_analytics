Rails.application.routes.draw do
  devise_for :users
    root 'accesslogs#index'
  resources :tokens, only: %i[index new create]
  resources :accesslogs, only: %i[create]
end
