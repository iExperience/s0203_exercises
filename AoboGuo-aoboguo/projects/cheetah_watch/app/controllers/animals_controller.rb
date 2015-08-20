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

	def new
		@animal = Animal.new 
	end

	def create
		@animal = Animal.new(animal_params)

		if @animal.save
			redirect_to animal_path(@animal)
		else 
			render :new
		end
	end 

	def edit
		@animal = Animal.find(params[:id])
	end

	def update
		@animal = Animal.find(params[:id])

		if @animal.update(animal_params)
			redirect_to animal_path(@animal)
		else
			render :edit
		end
	end

private 
	def animal_params
		animal_params = params.require(:animal).permit(:name, :species, :region, :diet, :color, :age, :size)
	end 


end