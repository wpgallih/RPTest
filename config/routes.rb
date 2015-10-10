Rails.application.routes.draw do
<<<<<<< HEAD
  resources :stories
  devise_for :users
  #devise_for :users
  post "stories/add_to_story" => "stories#add_to_story"
=======

  devise_for :users
  #devise_for :users
>>>>>>> 8ed8e3a81bfa99cbdaac9226eacdf945b3e15ca4

  authenticated :user do
    root 'users#index'
  end

  unauthenticated :user do
    devise_scope :user do
      get "/" => "devise/sessions#new"
    end
  end

  resources :conversations do
    resources :messages
  end
end