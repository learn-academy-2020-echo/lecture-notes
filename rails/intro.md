# Ruby on Rails 10/3/2020

Ruby on Rails is a framework written in the Ruby programming language. A framework defines the path for a developer to go about creating an application.

[ Rails docs ](https://guides.rubyonrails.org/)

### MVC - architectural pattern
- M - model, database
- V - view, what the user sees, HTML, CSS, React
- C - controller


MVC - a full-stack application has all these pieces, but the pieces can come from different technologies

Full-stack Rails - MVC all coming from Rails
Decoupled application - MC from Rails and V is React

### Rails
- DHH created Rails in 2004/5
- Open-source
- Currently on version 6
- Motto: "Convention over configuration"

### Create a new rails app  
$ rails new my_app -d postgresql -T

### Create the databases  
$ rails db:create

### Start the rails server
$ rails server (or: $ rails s)  
Go to localhost:3000 in the browser  
$ control c (stops the server from running)




### Postgres console
$ psql  
$ \l   (stands for list)

To get out of the list:  
$ q  

To get out of the psql console:   
$ exit
