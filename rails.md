# ASSESSMENT 5: INTRO TO RAILS
## Interview Practice Questions

Answer the following questions. First, without external resources. Challenge yourself to answer from memory. Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own there is always something more to learn.

1. MVC (Model View Controller) is a pattern for the architecture of a software program. Give a brief description of each component and describe how Ruby on Rails handles MVC.

  Your answer:
  The model holds the code that tells the app what to do. The view displays the data on a screen for a user to interact with the app. When they click or scroll, etc, the controller receives a request then manipulates the information, sending it through the model before the user sees the updated output on their screen. Ruby on rails connects http methods to all these processes defined in its routes file.

  Researched answer:



2. Using the information given, fill in the blanks to complete the steps for creating a new view in a Rails application.

  Step 1: Create the ___routes______ in the file config/routes
  ```
  get '/about' => 'statics#about'
  ```

  Step 2: Create the ____controller____ in the file ____app/controllers_______
  ```
  class ___MainController______ < ApplicationController
    def ____method_______
      render: _____html___________
    end
  end
  ```

  Step 3: Create the View in the file ____views/pages________
  code:
  ```
  <div>This is the About page!</div>
  ```


3. Consider the Rails routes below. Describe the responsibility of  each route. Which routes must always be passed params and why?

```
/users/       method="GET"     # :controller => 'users', :action => 'index'
/users/1      method="GET"     # :controller => 'users', :action => 'show'
/users/new    method="GET"     # :controller => 'users', :action => 'new'
/users/       method="POST"    # :controller => 'users', :action => 'create'
/users/1/edit method="GET"     # :controller => 'users', :action => 'edit'
/users/1      method="PUT"     # :controller => 'users', :action => 'update'
/users/1      method="DELETE"  # :controller => 'users', :action => 'destroy'
```

index: this method displays a whole database
show: *needs param* will show data for a specific object
new: creates a new form for an instance - it is an unsaved record
create: *needs param* will pass params into the record created by the new method and attempt to save it to the database
edit: renders the View
update: *needs param* is responsible for rendering the database/interacting with the model
destroy: *needs param* removes data from a database




4. What is the public folder used for in Rails?

  Your answer:

  Researched answer:
  this folder contains files typical of web applications: html templates for http errors


5. Write a rails route for a controller called "main" and a page called "game" that takes in a parameter called "guess"

class MainController < ApplicationController
  def game("guess")
  end
end

  get '/game' => 'main#game'

6. What are cookies? What is the difference between a session and a cookie?

  Your answer:

  Researched answer:
  cookies are a small piece of data sent from a website and stored on the user's computer by the user's web browser while the user is browsing. they are meant to help websites remember stateful information or record the user's browsing activity
  the difference is that cookies only store data on the client-side machine whereas sessions get stored on the client as well as the server


7. In an html form, what does the "action" attribute tell you about the form? How do you designate the HTTP verb for the form?

  Your answer:

  Researched answer:
  The action attribute specifies where to send the form-data when a form is submitted - what URL



8. Name two rails generator commands and what files they create:

  Your answer:
  controller : creates a comments file, views, test, helper, and style files
  model : creates a migration file, a view file, and a model file

  Researched answer:


9. Rails has a great community and lots of free tutorials to help you learn. Choose one of these resources and look through the material for 10-15 min. List three new things you learned about Rails:
- [Ruby on Rails Tutorial](https://www.tutorialspoint.com/ruby-on-rails/index.htm)
- [Rails for Zombies](http://railsforzombies.org)
- [Rails Guides](http://guides.rubyonrails.org/getting_started.html)

1.

2.

3.
