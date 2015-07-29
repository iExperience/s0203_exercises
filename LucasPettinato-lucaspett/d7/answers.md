Conceptual Questions
1) After a web server receives the http request from the browser, it uses routes to find out which controller to use. The controller does the work of data submissions, and other "browser things". The controller then searches and provides for the views, which are files that read merely what the controller gives them and outputs styling functions like HTML and CSS.

2) Schema: A file in a rails project that holds the attributes of a model. This can not, under no circumstances, be manipulated by the user. Changing it will cause the app to not work properyl

Database: A structure within a computer that stores data in tables. The model pulls data from it

Model: An object that corresponds to a record in a table. It talks to the database and stores and validates data

Blog Example: The database stores and persists all the data that is compiled in the Blog lab project. After creating the rails apps in the terminal, the user must also create the model in the terminal. When writing the model, the user must include the variables that will be shown (useful) in the web application. This data is pulled from the data. The variables are then stored in the project's schema file, a file which cannot be changed. The only way to change the shcema file is by performing further migrations

3) ***See powerpoint picture

The diagram I created flows very similarily to the original rails diagram showed in class. The browser sends a http request to the web server, which then sends params to the routes. The routes search for controllers to use. The controller then renders the views (style, HTML, CSS portion) and models (which gets its attributes from the database) and gives orders on how the computer can get the job done. The controller then ends up returning the HTML and CSS back to the web server, which then sends a HTTP response to the browser.

Code Questions
1) resources :sharks in config/routes.rb allows the user to perform CRUD on anything it wants through a web app. For example, the resource of Netflix is movies, for Tinder it is profiles, etc. In this particular situation, the user would be able to use resources :sharks to create, read, update, or destroy different types of sharks in(to) the program.

2) rake routes provides the user with a complete list of available routes in the application / program while the server is running in the development environment. This command is useful because you know which methods / routes to define in your controller, which ruby on rails can then access later.

3) #routes.rb

Rails.application.routes.draw do

	resources :heroes

end

#heroes_controller.rb

class HeroesController < ApplicationController

	def index
		@heroes = Hero.all
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
    		redirect_to @hero
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

		redirect_to heroes_path
	end
 
	private
  		def hero_params
    	params.require(:hero).permit(:super_power)
  		end
	end

Short Answer

1) The purpose of a view is to generate the HTML, CSS, and other styling operations of the program. The view solely reads and works with what the controller provides for it.

2) Migrations are Ruby classes that make it simple to create and modify database tables. Rails uses rake commands to run migrations, and it's possible to undo a migration after it's been applied to your database. Migration filenames include a timestamp to ensure that they're processed in the order that they were created. Additionally, migrations are the only things that can update the schema file in a program.

3) We use partials to keep thing DRY (do not repeat!!!!). Partials allow us to only have to write certain code once instead of multiple times if the code appears on multiple pages (allow us to share view code between multiple views).