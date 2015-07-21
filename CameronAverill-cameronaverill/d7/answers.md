1. A route specifies which controller receives which requests; that is, it creates paths between controllers, with multiple paths leading to the same controller. By typing "resources :routename", rails automatically generates routes that link to seven action methods in a controller. When the browser visits a URL that matches a defined route, Rails instantiates the appropriate controller. The controller receives the information for a page and it is in the controller that we write the methods that represent the CRUD operations. By defining the different methods that represent CRUD operations, the views for each specific method are automatically rendered. For example, if the router links to a controller called Article, inside Article you would write the method index. By writing this method, the view articles/index.html.erb would automatically be rendered by rails. 

2. A database is a place to store data in tables. A model is an object that stores data in a database table. It allows us to interact with the database sans SQL commands through several methods called attributes.  A schema contains all the attributes of a model in one file. Using the Blog app as an example, the database is a table that's not visible to the user. It contains values for titles, text, the time created, and the time updated. The model used is in a file called article.rb, and we called methods on this object to access data in the table. We could look to the schema to see all the current attributes of the model, meaning the data stored in the database.

3. ![alt text](/Users/cameronaverill/Desktop/ss2015 "Image")

4. The line resources :sharks in config/routes.rb would define seven routes to action methods in the SharksController. The methods are index, show, new create, edit, update, and destroy. 

5. Rake routes shows all the routes in a given application. This is useful because it shows what action method one should define for a given CRUD, helping to show what else you need to define for your application to run properly. Also, it displays them in the order that they're found in routes.rb

6. a. No require
	b. Routes are defined in two files in rails. You'd do resources :name in routes.rb, which would automatically generate the RESTful routes. Then in the controller NamesController.rb, you'd define a method for each of these routes. On the other hand, in the code shown, the route is defined with get, and the method is define in a block immeditely following. The parameters would be accessed in params. 

7. a. The view displays the information of a controller's action method. It shows the information in a user-friendly, HTML format.
	b. A migration is used to modify the structure, not the content, of a database. One must do rake db:migrate .
	c. We use partials for pages like forms, that share similar content with a few minor differences. It keeps code DRY. 