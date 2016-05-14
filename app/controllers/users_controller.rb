class UsersController < ApplicationController
	# Finding users through current_user (defined by devise)
	before_action :set_user, only: [:show]

	def edit
	end

  def show
  	@all  = User.all
  end

  private

  def set_user
  	@user = User.find(params[:id])
  end
end
