class WelcomeController < ApplicationController
  def about
  end

  def home
    redirect_to assests_path if logged_in?
  end
  
end
