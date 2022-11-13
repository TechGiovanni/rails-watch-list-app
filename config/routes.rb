Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists, only: %i[new create show destroy edit] do
    resources :bookmarks, only: %i[new create]
    resources :reviews, only: %i[create]
  end
  resources :bookmarks, only: :destroy
  resources :reviews, only: :destroy
end
