class SearchController < ApplicationController
	def index
		keyword = "%#{params[:q]}"

		@profiles = Profile.where(["alias LIKE ? or description LIKE ? ", keyword, keyword])
	end
end