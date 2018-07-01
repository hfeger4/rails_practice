Rails.application.routes.draw do



  resources :sessions, only: [:new, :create, :destroy]

  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'
  get 'sessions', to: 'sessions#new'


  resources :users
  get 'signup', to: 'users#new'
  get 'tasks/index'

  get 'tasks/new'

  get 'welcome/index'
  root 'welcome#index'

  resources :tasks

  get 'tasks/:id/complete/:completed', to: 'tasks#complete'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
