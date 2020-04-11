Rails.application.routes.draw do
  
  get 'endorsements/new'
  get 'endorsements/edit'
  get 'endorsements/index'
  get 'endorsements/show'
  resources :teachers, only: [:index, :show, :new, :edit]
  resources :ratings, only: [:index, :show, :new, :edit, :update, :destroy]
  resources :parents, only: [:index, :show, :new, :edit, :update]
  resources :activities, only: [:index, :show, :new, :edit, :update]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
