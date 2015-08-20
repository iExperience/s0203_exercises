CONCEPTUAL QUESTIONS:

1. A route leads to a controller by taking a request and matching it with the appropriate action in the controller. The CRUD methods (GET, POST, PATCH, PUT, DELETE) is an operation that can be performed on the resource, and the route maps the requests to actions in a single controller. The controller is what holds the heavy-duty code and is processed when handling a request. When it is time to send back a response to the user, the controller passes things off to the view, which adds elements of how the information will be displayed when it is sent back to the user. 

2. A schema is a documentation of the current state of the structure and the attributes of the database it is built upon. The schema changes with each migration, and we should never alter the schema of our database because that will break everything. We should check the schema to make sure that our database is actually reflective of the information we want to have. A database is a way to permanently store data. The best way to conceptualize this is to imagine the data as being stored in tables, where the tables consist of records and columns. When we interact with the database, it is through a model. A model is a representation of one record of data. In the blog example, for instance, we created a database of the articles we created. Each article is made up of a title and a text. The schema tells us the structure of the "articles" table of data, which includes the title and the text, both as strings. When we want to interact with a specific article in the database (such as edit or delete), a model of the record of data we wanted to interact with was created and allowed us to do our thing. 

3. (http://imgur.com/APKG5Vc)
	A route leads to a controller, where the appropriate action is located. The controller accesses the information from the database through a model. The controller then renders the views and returns the information to the user. 

CODE QUESTIONS: 

4. The line resources :sharks in config/routes.rb would create a set of routes for sharks. 

5. Rake routes tells you the routes available to your application and what they do. 

6. #routes.rb
	Rails.application.routes.draw do

  		resources :heroes

	end

	#heroes_controller.rb
	class HeroesController <ApplicationController

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
		@hero = Hero.new(article_params)

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
			params.require(:hero).permit(@hero, @super_power)
		end

	end 

SHORT ANSWER:

7. What the purpose of a view is:
	The views directory holds the template  files that make up the views associated with all of the controllers of the application. The views files are used to display the view that results from each controller action. 

8. Why we use partials
	We use partials to keep our code DRY. With partials, we can put pieces of code from the templates on separate files and reuse them throughout our templates. 

9. What is a migration
	Migrations allow us to alter the database over time. 

