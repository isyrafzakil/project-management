Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :users,  only: [:show, :update, :destroy, :create]
  resources :sessions, only: [:create, :destroy]


  root to: 'welcome#index'

  get 'signup' => "users#new", as: :signup
  get 'login' => "sessions#new", as: :login
  get 'logout', to: 'sessions#destroy', as: 'logout'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
