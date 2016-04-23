class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@all 	= User.all
  end
end
