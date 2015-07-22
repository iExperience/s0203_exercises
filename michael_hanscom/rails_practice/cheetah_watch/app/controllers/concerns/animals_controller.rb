class AnimalsController < ApplicationController
	def index
		@animals = Animal.all.order(name: :desc)
	end

	def show
		@animal = Animal.find(params[:id])
	end
end