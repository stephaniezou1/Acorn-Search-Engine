Rails.application.routes.draw do
  
  root 'static#home'

  get '/parent_account', to: 'application#parent_account', as: 'parent_account'
  get '/teacher_account', to: 'application#teacher_account', as: 'teacher_account'

  get '/parents/login', to: 'parents#loginform', as: 'parent_login'
  post '/parents/login', to: 'parents#handle_login'
  # post '/logout', to: 'parents#logout'

  get '/teachers/login', to: 'teachers#loginform', as: 'teacher_login'
  post '/teachers/login', to: 'teachers#handle_login'
  
  #LOGOUT

  post '/logout', to: 'application#logout'

  post '/teachers/endorsements/:activity_id', to: 'teachers#endorse', as: 'teacher_endorse'
  
  #SESSIONS

  # get '/login', to: "sessions#new"
  # post '/login', to: "sessions#create"
  # post '/logout', to: "sessions#destroy"

  resources :teachers
  resources :ratings
  resources :parents
  resources :activities
  resources :endorsements

  get '*path' => redirect('/')



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
