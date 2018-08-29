Rails.application.routes.draw do
  root "tops#top"
  resources :blogs do
    collection do
      post :confirm
    end
  end
end
