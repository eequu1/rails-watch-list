Rails.application.routes.draw do
  # get "/lists", to: "lists#index"
  # get "/lists/new", to: "lists#new"
  # get "/lists/:id", to: "lists#show", as: :list
  # post "/lists", to: "lists#create"

  # get "/lists/:id/bookmarks/new", to: "lists#new"
  # post "lists/:id/bookmarks", to: "lists#create"

  root to: "lists#index"

  resources :lists, only: [ :index, :new, :show, :create ] do
    resources :bookmarks, only: [ :new, :create ]
  end
  resources :bookmarks, only: [ :destroy ]
end
