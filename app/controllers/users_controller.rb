class UsersController < ApplicationController
	def my
		@user = current_user		
	end

	def update
		current_user.update(user_params)
		redirect_to my_users_path
		
	end

	private

	def user_params
		params.requier(:user).permit(:first_name, :last_name)
		
	end
end
