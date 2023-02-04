Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :user_books do
    resources :reviews
  end
  resources :books
  get "reading_list", to: "books#reading_list"
  get "rewards", to: "pages#rewards"
  get "add_to_wish_list", to: "books#add_to_wish_list"
end
