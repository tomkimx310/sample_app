class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by_email(params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			# flash.now[:success] = "Welcome #{[@user]}!"
			sign_in user
			redirect_back_or user
		else
			flash.now[:error] = "Invalid email/password.  Please try again." # error message!
			render 'new'
		end
	end
	
	def destroy
		sign_out
		redirect_to root_url
	end
end
