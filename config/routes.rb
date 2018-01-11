Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get 'sessions/new'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users

  resources :sessions

  resources :rubrics, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :categories, only: [:show, :new, :create, :edit, :update, :destroy] do
      resources :criteria, only: [:show, :new, :create, :edit, :update, :destroy]
    end
  end

  root 'rubrics#index'

end
