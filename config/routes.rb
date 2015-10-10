Rails.application.routes.draw do
  resources :stories
  devise_for :users
  #devise_for :users
  post "stories/add_to_story" => "stories#add_to_story"

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