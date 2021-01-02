Rails.application.routes.draw do

resources :users, only: [:new, :create]
resources :sessions, only: [:new, :create, :destroy]

# log in route
get 'login', to: 'sessions#new'

post 'login', to: 'sessions#create'

# log out route
get 'logout', to: 'sessions#destroy', as: 'logout'

# sign up page route
get 'signup', to: 'users#new', as: 'signup'

post 'signup', to: 'sessions#create'

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
