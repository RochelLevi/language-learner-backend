Rails.application.routes.draw do
  namespace :api do
    resources :users, only: [:create, :update, :show, :destroy]
    resources :languages, only: [:index]
    resources :learned_words, only: [:create]
    # resources :point, only: [:index]
    resources :words, only: [:create, :index]
  end
end
