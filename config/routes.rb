Rails.application.routes.draw do
  resources :monsters, only: [:index, :show, :create, :update, :edit]
  resources :tweets, only: [:index, :show]
  root "tweets#index"
end
