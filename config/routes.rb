Rails.application.routes.draw do
  root to: 'projects#index'
  resources :areas do
    resources :items, only: [:new]
  end
  resources :items
  resources :projects do
    resources :students, only: [:new]
  end
  resources :students
end
