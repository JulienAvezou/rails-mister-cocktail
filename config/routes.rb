Rails.application.routes.draw do
  root to: 'cocktails#index'
  get '/cocktails/secret', to: 'cocktails#secret'
  resources :cocktails, only: [ :new, :create, :show, :destroy] do
    resources :doses, only: [ :create]
  end
  resources :doses, only: [ :destroy ]
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
