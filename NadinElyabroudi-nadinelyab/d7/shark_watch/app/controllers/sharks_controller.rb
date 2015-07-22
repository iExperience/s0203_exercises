class SharksController < ApplicationController
	def index
		@sharks = Shark.all
	end

	def show
		@shark = Shark.find(params[:id])
	end

	def new
		@shark = Shark.new
	end

	def create
		@shark = Shark.new(shark_params)

		@shark.save
		redirect_to @shark
	end

	private
		def shark_params
			params.require(:shark).permit(:name, :size, :gender, :danger_level)
		end
end