class SharksController < ApplicationController
	def index
		@sharks = Shark.all
	end
	
	def show
		@shark = Shark.find(params[:id])
	end

	private
  		def shark_params
    	params.require(:shark).permit(:name, :size, :gender, :danger_level)
  		end
	end