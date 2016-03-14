class Api::ProfileController < ApplicationController
	def getProfile
		if params[:type] == "student"
			studentProfile = StudentProfile.find_by(rollnum: params[:username])
			if studentProfile
				render json: studentProfile, status: 200
			else
				render json: { errors: "Invalid email or password" }, status: 422
			end
		else
			render json: { errors: "Invalid email or password" }, status: 422
		end
	end
end
