Rails.application.routes.draw do
  resources :exercise_sets
  resources :workout_exercises
  resources :exercises
  resources :workout_sessions
  devise_for :users
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
