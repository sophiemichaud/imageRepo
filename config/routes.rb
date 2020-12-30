Rails.application.routes.draw do

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
