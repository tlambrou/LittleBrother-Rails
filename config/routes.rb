Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :govs, only: [:index, :show]

  resources :rubrics, only: [:index, :show] do
    resources :criteria, only: [:index, :new, :create]
  end

  resources :criteria, only: [:show]

  root 'rubrics#index'

end
