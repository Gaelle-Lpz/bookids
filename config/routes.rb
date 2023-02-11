Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :books do
    resources :user_books, only: [:create]
    collection do
      get :reading_list
      get :wish_list
      get :search
    end
    member do
      get :add_to_wish_list
    end
  end
  resources :user_books, only: [:index] do
    resources :reviews
  end

  get "rewards", to: "pages#rewards"
  resources :rewards, only: [:index]
end
