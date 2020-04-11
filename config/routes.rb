Rails.application.routes.draw do
  
  resources :ratings, only: [:index, :show, :new]
  resources :parents, only: [:index, :show, :new, :edit]
  resources :activities, only: [:index, :show, :new, :edit]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
