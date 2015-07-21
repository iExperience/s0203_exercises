### Conceptual Questions

Routes connect the incoming requests to controllers and invoke the actions specified by the route. Then Rails automatically renders the view using the controller and action name.

A database is a tool for permanently storing data using tables/records. A model corresponds with one data record. Models: singular, tables: plural.


### Code Questions

resources: sharks set the resources to sharks and creates the seven restful routes automatically.

rake routes show you the routes you've created

there'll be a routes.rb with the resources/routes. controllers with the actions and model.

### Short Answer

What is the purpose of a view?
A view is a HTML template that allows embedding Ruby using ERB. It's supposed to be simple and a way to show your stuff.

What is migration?
It's used for modifying the structure of your database.

Why we use partials?
Partials break the rendering process into more manageable chunks. YOu can move the code for rendering a particular pieces of a response to its own file.