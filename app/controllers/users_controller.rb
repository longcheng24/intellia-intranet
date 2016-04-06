class UsersController < ApplicationController
	def index
		@users = User.all
		@user_active = 1
	end

	def show
		@user = User.find_by(id: params[:id])
		@user_active = 1
	end
end
