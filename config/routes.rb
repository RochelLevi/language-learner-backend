Rails.application.routes.draw do
  namespace :api do
    resources :users, only: [:index, :create, :update, :show, :destroy]
    resources :languages, only: [:index]
    resources :learned_words, only: [:create]
    resources :words, only: [:create, :index]
    resources :points, only: [:update]
    post '/auth', to: 'auth#create'
    get '/current_user', to: 'auth#show'
  end
end
