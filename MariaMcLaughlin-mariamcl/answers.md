# Conceptionual Questions
1. A route will direct to a controller, which will run a method based on the route and render the specified view.
2. A schema specifies what is in the timestamp of the migration that created the current database.
3. Routes -> Controller -> Views -> Model -> Database
... The Route points to a method within the Controller which specifies a specific view to show. Once the View changes something in the database, the model will put the information into a way that the database can understand it, and the info will be saved to the database.

# Code Questions
1. It makes a collection of similar objects to create, read, update, and destroy, and assigns them with their defined routes.
2. Rake routes shows all the available paths that an object can take to be worked with.
3. There would be no "require sinatra". The get "/" do would be changed to def index, and say @hero=Hero.all. Get "/heroes" would be the same, because you may want both to list the heroes.  Get "/heroes/:hero" do would be def show to show a particular hero. Inside would be @hero = Hero.fin(params[:id]).

# Topics
1. form-builder: This is a way of formatting a form for the user to enter data in a visually appealing way. This is also a Rails convention to enter it into the model and the database in an easier way.
2. strong parameters: A way to require Rails to tell exactly which parameters are allowed into our controller actions, because the ability to grab and automatically assign all controller parameters to your model in one shot makes the programmer's job easier.
3. partials: We use partials to make our code DRY, by factoring out common code and putting it into a seperate file that can be used by multiple views.