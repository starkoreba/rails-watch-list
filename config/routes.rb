Rails.application.routes.draw do
  get 'pages/home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'pages#home', as: 'home'
  get 'lists', to: 'lists#index'
  get 'lists/:id', to: 'lists#show', as: 'list'
  get 'lists/new', to: 'lists#new', as: 'new_list'
  post 'lists/:id', to: 'list#create'
end
