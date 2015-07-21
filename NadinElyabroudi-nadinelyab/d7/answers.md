# Conceptual Questions
1) A route has an associated HTML verb as well as a controller. The url cals a route which goes ot the controller and looks for the specific word like "search" or "edit". Then that controller looks for a view in the view folder that has the same name with .html.erb attached to the file name. The view tells the controller what template to display.
2) A database stores data, in the form of models, permanently. A model is an object that has attributes, it is basically a way of organizing data. The schema is the structure of the database. For example, in the Blog app the database saved the articles, the model was an article, and the schema would be how the database is organized.
3)[Imgur](http://i.imgur.com/WG75iuf.jpg)

# Code Questions
1) It would create the necessary routes for an application in which you wanted to do any of the CRUD actions on shark objects.
2) "rake routes" is a useful command to obtain a list of all available routes in an application. This is useful because if a controller has not been created for every route, then rails with throw errors, so if you can see all the routes that need to be made then you can use "rake routes".
3) 

#config/routes.rb

Rails.application.routes.draw do
	resources :heros
end

#app/controllers/heros_controller.rb

class HerosController < ApplicationController
	def index
		@hero = Hero.all
	end

	def show
		@hero = Hero.find(params[:id])
	end

	def new
		@hero = Hero.new
	end

	def edit
		@hero = Hero.find(params[:id])
	end

	def create
		@hero = Hero.new(hero_params)

		if @hero.save
			redirect_to @article
		else
			render 'new'
		end
	end

	def update
		@hero = Hero.find(params[:id])

		if @hero.update(hero_params)
			redirect_to @hero
		else
			render 'edit'
		end
	end

	def destroy
		@hero = Hero.find(params[:id])
		@hero.destroy

		redirect_to heros_path
	end

	private
		def hero_params
			params.require(:hero).permit(:superpower)
		end
end

In Rails routes are handled differently because they are not written in the same place as the block that they are supposed to run. This block is stored as a controller.

# Short Answer
1) The purpose of a view is to put html on the website that will display things for the user. It is called by the controller and in the view erb is used to build a webpage.
2) Partials are used to avoid repeating code. They are used when you want to display the same thing in more than one view. You can make a partial and make part of two views be the same without having to repeat code.
3) A form builder is an easy way to build forms by dragging and dropping questions. This is similar to how google forms work, which makes it easy to make a form that others will have to fill. It stores the information that it gathers in a table much like a database.

