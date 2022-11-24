Rails.application.routes.draw do
  get 'home/top'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#top"
#  get "/users/sign_out", to: 'home#top'


  devise_scope :user do
    # write all your routes inside this block
    get "/users/sign_in", to: "sessions#new"
    get "users/sign_out", to: "devise/sessions#destroy"
    resources :posts
  end
end
