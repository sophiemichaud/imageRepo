Rails.application.routes.draw do

resources :users, only: [:new, :create]

get 'login', to: 'sessions#new'

post 'login', to: 'sessions#create'

get 'welcome', to: 'sessions#welcome'

get 'authorized', to: 'sessions#page_requires_login'

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
