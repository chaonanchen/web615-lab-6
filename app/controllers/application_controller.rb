class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # Configure the application  to require you to sign into it in order to view any article, user, or comment
 before_action :authenticate_user!
end
