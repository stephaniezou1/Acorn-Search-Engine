Rails.application.routes.draw do
  
  root 'application#hello'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  resources :teachers, only: [:index, :show, :new, :edit, :update]
  resources :ratings, only: [:index, :show, :new, :edit, :update, :destroy]
  resources :parents, only: [:index, :show, :new, :edit, :update]
  resources :activities, only: [:index, :show, :new, :edit, :update]
  resources :endorsements, only: [:index, :show, :new, :edit, :update]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
