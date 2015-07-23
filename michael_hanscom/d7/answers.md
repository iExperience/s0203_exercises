1. A route is generated within routes.rb by defining a resource. Rails automatically
defines a route with all of the RESTful procedures within the controller named after
the route(Rails will do this as long as it is named appropriately). 
The controller, which is then defined as a class, had methods defined which pass
parameters depending on which method is used, which perform CRUD operations on the data. This data is then passed on to a view depending on what is entered after the "/"

2. A database is the storage space for the information, a model is an object that contains the structure for each record pulled from the database, a schema is a layout for the data that will be used for a migration

3. ![alt tag](http://imgur.com/dOCPhE7)

Coding Questions

4. It would define a set of resources called "sharks" with a route to a 
SharkController that would define restful paths for sharks.

5. Rake routes goes through the rakefile and loads all of the possible
tasks - which essentially just shows which routes are doing something 
on your webpage?

6. Require sinatra - > would be changed to class HeroesController <ApplicationController
- You would have def index
            @heroes = ["Batman", "Superman", etc...
end

-Get '/heroes/:hero' would change to 
	def create
	@superpower =heroes.find(:params[:id])

This is probably the only process/question that I need clarification on


Short Answer

7. The purpose of a view is to render the data that is passed from the controller back to
the browser from rails, along with the html used to format it.

8. We use partials so that we can access the same type of data on multiple pages.
For example, if we need to use the same instance variable (e.g. @articles) on multiple
pages, we can use "new" or "edit", or <%= render article %> in order to access a certain 
piece of info without having to go back to the database each time.

9. We use ERB because we want to be able to use the ruby that runs the rails interface in order to conveniently pass information to different views and display it with html and css without having to restructure it in a different programming language.