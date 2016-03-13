class Api::LoginController < ApplicationController
	def authenticate
		user = User.find_by(username: params[:username])
    	if user && user.password == params[:password]
      		# Log the user in and redirect to the user's show page.
      		render json: user, status: 200
    	else
      	# Create an error message.
      		render json: { errors: "Invalid email or password" }, status: 422
    	end
    end
end
