class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Checks that user is logged in across all pages except devise pages (sign_up)
  # Need to add more logic to keep profile pages locked - not sure the only works
  check_authorization :unless => :devise_controller?, only: [:new, :create]
end
