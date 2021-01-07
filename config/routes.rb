Rails.application.routes.draw do

resources :posts
resources :users, only: [:new, :create]
resources :sessions, only: [:new, :create, :destroy]

# log in route
get 'login', to: 'sessions#new', as: 'login'

post 'login', to: 'sessions#create'

# log out route
get 'logout', to: 'sessions#destroy', as: 'logout'

# sign up page route
get 'signup', to: 'users#new', as: 'signup'

get 'authorized', to: 'sessions#page_requires_login'

get 'upload', to: 'posts#new', as: 'upload'

get 'posts/show'

# about page route
get 'home/about'

# cart page route
get 'home/cart'

# login page route
get 'home/login'

# sign up page route
get 'home/signup'

# home page route
root 'home#index'

end
