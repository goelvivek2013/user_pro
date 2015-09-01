class ImagesController < ApplicationController
	
	def create
		@profile = current_user.profile
		@image = @profile.images.create(image_params)
		redirect_to profile_path(@profile)
	end

	def destroy
		debugger
		@profile = Profile.find_by(params[:profile_id])
		@image = Image.find(params[:id])
		@image.destroy
		redirect_to profiles_path(@profile)
	end
	private
		def image_params
			params.require(:image).permit(:avatar, :name)
		end
end
