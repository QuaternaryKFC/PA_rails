Rails.application.routes.draw do
  # resources :users, only: :show
  # resources :subjects
  # resources :instructors
  # resources :courses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#home'

  get '/enter', to: 'entrance#main'
  get '/signup', to: 'entrance#signup'
  post '/signup', to: 'entrance#submit_signup'
  get '/login', to: 'entrance#login'
  post '/login', to: 'entrance#submit_login'
  delete '/logout', to: 'entrance#logout'

  get '/users/:id', to: 'users#show', as: 'user', constraints: { id: /\d{1,}/ }

  get '/search', to: 'enroll#search'
  get '/enroll', to: 'enroll#home'
  post '/enroll', to: 'enroll#enroll'
  delete '/enroll', to: 'enroll#drop'
end
