Rails.application.routes.draw do
  resources :feeds
  resources :cotacts
  root "tops#top"
  resources :blogs do
    collection do
      post :confirm
    end
  end
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :favorites, only: [:create, :destroy]
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
