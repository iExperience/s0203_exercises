#####Conceptual Questions

1. A route is the part of you URL that comes after the root, or at least the part the comes after localhost____. Each route is defined in the controller as its own method/block. These methods are linked to .erb files, or views, via file name/convention, which display the html and run embedded Ruby code.

2. A schema has something to do with .db, which stands for database (maybe). A model allows us to access what's in a database. A database is where data is stored. articles_controller.rb has models within each of the routes (?)--create, edit, destroy, etc. The database is where the articles are stored. I'm not sure where the schema comes in. More explanation pls

3. Going off the guide, migrations are Ruby classes that allow us to modify database tables. How do they work? When are they run? In our blog, we defined the change method, which seems to just display the article, rather than changing anything. Does the migration work with the resource [article] object? Can we go over rake and Rakefiles more?

#####Code Questions
1. resources :sharks would make the resources sharks. 

2. I don't understand the rake command. It works with the command-line and runs things, but the only thing I sort of know is that rake shows the 7 different commands (I don't know the right word): create/edit/destory/etc.

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

I basically picked the two topics I understood; can we go over everything else? ._.
