# CONCEPTUAL QUESTIONS: 

### Explain how a route leads to a controller and renders a view.

	Essentially the rails router recognizes the URL and didpsatches it to the correct controllers method. First, it reads the route along with the CRUD Verb to first find the correct controller and then call the method inside the controller that matches the CRUD verb. The controller runs ay ruby code inside, assigns instance variables, and then automatically sends the html code for the corresponding page (ie the index method finds the index.html.erb file.)


### Explain the difference between a schema, a database, and a model. Give an example by relating it back to the Blog app you built in lab today.

	The schema is the blue print for the database, it contains the different tables and the names/types of information that will be stored there (attributes). The database is the physical place where the informtion is collected (basically an array of hashes but more efficient) and it is made to be fast to search and only easy for computers to read, not humans. The model is a ruby class that is there to interact with the database. It acts as a class through which the controller can access the database through different methods and such that ruby automatically generates. 


### Draw your own diagram of how all the pieces of a rails app connect (routes, views, controller, model, database) and explain your diagram. If it helps, use an analogy.

	NOT SURE HOW TO ANSWER THIS ONE


# CODE QUESTIONS:



### What would the line resources :sharks in config/routes.rb do?
	
	it would create a new resource "shark" that can be CRUD'd. Thus it would automatically create the 7 routes automatically and know which method to send them to in the sharks_controller that would have to be made. 


### What does rake routes do? Explain why you think this command might be useful.
	
	rake routes shows you all of the available routes at a certain point, but importantly shoes you the heirchy of what the route matcher will choose when options are similiar depending on their CRUD verb.


### How would the code below look if it was written in Rails? Please specify what the name of the file or files would be as a comment, like it is below. How are routes handled differently in Rails?
	
	In the config/routes.rb file you would need to write 

		resources :heros


	This would take place in the heros_controller.rb file

	def index 
		@heros = Hero.all
	end
	def show
		@hero = Hero.find(params[:id])
	end

		This doesnt do the exact right thing, but it doesnt just convert from one to the other, the frameworks are just entirely different. 


SHORT ANSWER: 

### what the purpose of a view is
	
	The purpose of a view is to enable a person to separate their front end from their back end. The view is what actually shows up on the page and the information it gets can come from instance variables with the @ symbol This creates a more organized framework for code by not cluttering the html page with scripts and such, but instead separating the processes of gateherng the correct information to display and then displaying it. 


### what params are in the context of Rails

	params are a hash of parametersthat rails uses. The user;s browser sends the params which can be an index or several other things combined and be use to send specific information to a page that can render different results depending on the params. 


### what a migration is

	Migrations are a convenient way to modify/alter your database in an organized way. Active Record kees track of migrations. Migrations are essentially just a form of update for major changes to the structure of a model/database. 


### what strong parameters means

	Strong Parameters is a new feature in Rails $ that enables the coder to easily sanitize user input by using the .requires() and .permits() method to distinguish between what is necessary insput and what is permitted input. 


### why we use partials

	Partials are used to keep out code DRY by not repeating any code (such as a form in a new view and in an edit view). It is simply a way of cleaning up the code and not repeating yourself. 


### why we use ERB
	
	ERB is embedded ruby which is simply a way to put ruby into an html file between the <%= RUBY CODE HERE => tags




