class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def homepage
    puts "home"
    render :homepage
  end
  
end
