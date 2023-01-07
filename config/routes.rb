Rails.application.routes.draw do
  # get 'bookmarks/new'
  # get 'bookmarks/create'
  # get 'bookmarks/destroy'
  # get 'lists', to: 'lists#index'
  # get 'lists/new', to: 'lists#new'
  # post 'lists', to: 'lists#create'
  # get 'lists/:id', to: 'lists#show', as: 'list'

  resources :lists, only: [ :index, :new, :create, :show, :destroy ] do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
    resources :bookmarks, only: [:destroy, :new, :create]
  end

end
