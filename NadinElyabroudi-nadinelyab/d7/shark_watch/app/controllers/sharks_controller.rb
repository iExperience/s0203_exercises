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
		@shark = Shark.new(params[:id])

		@shark.save
		redirect_to @shark
	end
end