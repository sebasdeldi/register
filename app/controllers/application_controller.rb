class ApplicationController < ActionController::Base
  require 'securerandom'
  protect_from_forgery with: :exception

  #creates a secure random string used as password for new users
  def randomize_password
    random_string = SecureRandom.hex
  end

end
