# How many routes does this project have? (rake routes will not work for those of you who don't have postgres installed yet)

	Comments: create, destroy
	Treasures: index, show, new, edit, create, update, destroy

	Thus there are 9 total routes that the project can have (not including the many permutations using index's and such)


# How many models?

	There are 2 models: Comment and Treasure. 


# How many controllers?

	There are two controllers made by the application: treasure_controller and comments_controller. Application also exists by default. 


# Where does the CRUD logic take place?

	The crud logic takes place in the controllers, treasure_controller and comments_controller. 


# Which view allows us to create a new treasure?

	views/treasures/new.html.erb is the view that allows a user to create a new treasure. 


# Which view allows us to comment on an existing treasure?

	The line <%= render 'comments/form' %> is where the user is able to input a comment on the views/treasures/show.html.erb veiw. This line points to the partial _form.html.erb in the comments folder. 


# Which view is our home page?

	root 'treasures#index'
		--> thus the root of the website is index.html.erb in the treasures folder...the index page 


# Which view lists all the treasures?
	
	The index page lists all of the treasures: views/treasures/index.html.erb


# Which attributes belong to treasures? And comments?

	 t.string   "bru"
    t.text     "comment"
    t.integer  "treasure_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false


    Thus comments have a "bru", a "comment", a "treasure_id", and the normal timestamps

    and 

    create_table "treasures", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false

    Thus, treasures have a "title", "description", and the normal timestamps. 


# Which file displays the attributes for each model?

	the schema displays the sttributes for each model also the migrations

