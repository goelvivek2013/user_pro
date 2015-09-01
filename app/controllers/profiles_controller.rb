class ProfilesController < ApplicationController
	before_action :authenticate_user!

	def new
		@profile = current_user.build_profile
	end
	def create
		@profile = current_user.build_profile(profile_params)
		if @profile.save
			redirect_to @profile
		else
			render 'new'
		end
	end

	def show
		@profile = current_user.profile
		@images = @profile.images
	end

	def edit
	end

	private

		def profile_params
			params.require(:profile).permit(:name, :address, :phone_number)
		end
end