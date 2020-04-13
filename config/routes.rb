Rails.application.routes.draw do
  
  get '/parents/login', to: 'parents#loginform', as: 'parent_login'
  post '/parents/login', to: 'parents#handle_login'
  post '/logout', to: 'parents#logout'
  get '/search' => 'activities#search', :as => 'search_page'

  resources :teachers, only: [:index, :show, :new, :edit, :update]
  resources :ratings
  resources :parents, only: [:index, :show, :new, :edit, :update]
  resources :activities, only: [:index, :show, :new, :edit, :update]
  resources :endorsements, only: [:index, :show, :new, :edit, :update]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
