class HomeController < ApplicationController

  skip_before_action :authorized, only: [:index, :about]

  def index
  end

  def about
  end
  
  def login
  end

  def signup
  end
  
end
