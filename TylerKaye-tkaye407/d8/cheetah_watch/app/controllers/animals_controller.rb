class AnimalsController < ApplicationController
	def index 
		@animals = Animal.all.order(name: :desc).where(species: "Zebra")
	end
	def show 
		@animal = Animal.find(params[:id])
	end	
end
