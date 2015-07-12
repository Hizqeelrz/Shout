Rails.application.routes.draw do

  root to: 'homes#show', via: :get
  resource :dashboard, only: [:show]
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show] do
    post 'follow' => 'following_relationships#create'
  end
  resources :shouts, only: [:show, :destroy]
  resources :text_shouts, only: [:create]
  resources :photo_shouts, only: [:create]

end
