#####Conceptual Questions

1. A route is the part of you URL that comes after the root, or at least the part the comes after localhost____. Each route is defined in the controller as its own method/block. These methods are linked to .erb files, or views, via file name/convention, which display the html and run embedded Ruby code.

2. A schema is the structure of a database. A database contains the actual data. A model is the table that the data is contained in. For the blog, the schema is the title/text structure, the model is the table displaying the data, and the database is the actual data. 

3. ![alt text](https://github.com/swong1267/s0203_exercises/blob/master/SerenaWong-swong1267/d7/Screen%20Shot%202015-07-21%20at%208.30.43%20PM.png?raw=true)

#####Code Questions
1. resources :sharks would make the resources sharks. 

2. rake routes shows the URL and verb (routes) for each the standard actions. This command can show you what your controller should have and what order Rails checks for routes. 

3. Code: 

 <!-- routes.rb -->

Rails.application.routes.draw do
 
  resources :heroes
 
  root 'welcome#index'
end

<!-- HeroesController.rb -->

would define index/show/create/destroy/etc

I don't quite underestand how to map those verbs onto the code though. 

#####Long Answer
1. Why we use partials: to stay true to DRY. Partials allow us to take out the html for elements that we want repeated on every page, e.g. nav bars, and put it in a separate .erb file, which we then link to the layout.erb.

2. What strong parameters are: a security feature to make sure exactly the parameters required are passed in, no more and no less. This prevents malicious URLs.

3. A migration defines the structure of the model. It sort of defines what the fields of the class object will be--the name of the field and the type (e.g. text, string, integer).