class AnimalsController < ApplicationController 
	def index
		@animals = Animal.all.order(:name)
		#order allow us to specify the order of the columns
		#the name parameter tells it to sort by the order of the name
		#if we wanted to sort in reverse we would put (name: :desc)
	end

	def show
		@animal = Animal.find(params[:id])
	end

end