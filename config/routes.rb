Rails.application.routes.draw do
  root 'accesslogs#index'
  get 'accesslogs/token_create'
  post 'accesslogs/create'
end
