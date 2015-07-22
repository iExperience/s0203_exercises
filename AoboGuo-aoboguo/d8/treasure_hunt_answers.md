1. This project has 16 routes. It is because the project has two resources (treasures and comments), and each resource has 8 routes by convention. 

2. There are 2 models. If you look in the models file, there are 2 models (treasure and comment).

3. There are 3 controllers. If you look in the controllers file, there are 3 controllers (application, comments, and treasures).

4. The CRUD logic takes place in the controllers because that is where you define the different actions.

5. The new.html.erb view allows us to create a new treasure. 

6. The show.html.erb view allows us to comment on an existing teasure. 

7. The index.htlm.erb view is our homepage. 

8. The index.htlm.erb view lists all the treasures.

9. The attributes for treasure are title and description. The attributes for comments are bru and comment. 

10. The file that displays the attributes for treasure is the _form.html.erb in the treasures views file. The file that displays the attributes for comments is the _form.html.erb in the comments views file. 