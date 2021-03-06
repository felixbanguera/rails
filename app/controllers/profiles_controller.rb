class ProfilesController < ApplicationController
	before_action :set_profile, only: [:show, :edit, :update, :destroy]
	def index
		is_remote = params[:is_remote]

		if is_remote
			@profiles = Profile.last_published.where({is_remote: is_remote})
		else
			@profiles = Profile.last_published
		end
	end
	def show
		@profile = Profile.find(params[:id])
	end

	def edit
		@profile = Profile.find(params[:id])
	end

	def update
		@profile = Profile.find(params[:id])
		if @profile.update(profile_params)
			redirect_to @profile
		end
	end

	def new
		@profile = Profile.new
	end

	def create
		@profile = Profile.new(profile_params)
		@profile.user = current_user
		if @profile.save
			redirect_to @profile
		else
			redirect_to root_path
		end
	end

	def destroy
		@profile = Profile.find(params[:id])
		@profile.destroy

		redirect_to profiles_path
	end

	private
	def profile_params
		params.require(:profile).permit(:alias, :description, :is_remote, :price, :user)
	end

	def set_profile
		@profiles = Profile.find(params[:id])
	end
end
