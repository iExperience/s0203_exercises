class LikesController < ApplicationController
	def create
		@place = Place.find(params[:place_id])
		@likes = @place.likes.create(likes_params)
		redirect_to place_path(@place)
	end

	def delete
		@place = Place.find(params[:place_id])
		@like = @place.likes.create(likes_params)
		@like.destroy
		redirect_to place_path(@place)
	end

	private
		def likes_params
			params.require(:like).require(:likes)
end