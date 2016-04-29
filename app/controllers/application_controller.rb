class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  check_authorization :unless => :devise_controller?, only: [:new, :create]

  # Checks that user is logged in across all pages except devise pages (sign_up)
  # Need to add more logic to keep profile pages locked - not sure the only works
  before_filter :assign_header_methods

  def assign_header_methods
    @incoming = FriendRequest.where(friend: current_user)
    @outgoing = current_user.friend_requests
  end

end
