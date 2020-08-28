Rails.application.routes.draw do
  resources :reviews
  resources :users
  resources :lessons
  resources :requests
  resources :searches
  resources :schedules
  resources :instructor_resorts
  resources :instructors
  resources :resorts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
end
