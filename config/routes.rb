Rails.application.routes.draw do
  
  get '/parents/login', to: 'parents#loginform', as: 'parent_login'
  post '/parents/login', to: 'parents#handle_login'
  post '/logout', to: 'parents#logout'
  get '/search', to: 'activities#search', as: 'search_page'

  get '/teachers/login', to: 'teachers#loginform', as: 'teacher_login'
  post '/teachers/login', to: 'teachers#handle_login'
  post '/logout', to: 'teachers#logout'

  resources :teachers, only: [:index, :show, :new, :edit, :update]
  resources :ratings
  resources :parents
  resources :activities
  resources :endorsements, only: [:index, :show, :new, :create, :edit, :update]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
