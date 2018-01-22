Rails.application.routes.draw do
  namespace :api do
    resources :users, only: [:index, :create, :update, :show, :destroy]
    resources :languages, only: [:index, :show]
    resources :learned_words, only: [:create]
    # resources :point, only: [:index]
    resources :words, only: [:create, :index]
  end
end
