Rails.application.routes.draw do
  root to: 'areas#index'
  resources :areas do
    resources :items, only: [:new]
  end
  resources :items
end
