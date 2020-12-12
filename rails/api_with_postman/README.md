# Rails API with Postman


**7 RESTful Routes**
ROUTE - Connection to the database

- update - updates an existing item (put/patch) - must have an id param
- create - creates a new item (post)
- index - gets all the items (get)
- show - gets one item by id (get) - must have an id param
- destroy - deletes an existing item (delete) - must have an id param

Leaving these behind when creating an API
- new - none
- edit - none


Setup
- create a new rails app - don't name it the same thing as your model, lowercase/snake_case
- rails db:create
- bundle add rspec-rails
- rails generate rspec:install
- rails generate resource Student name:string cohort:string
- delete view folder
- rails db:migrate

Cool command
- $ rails routes


Postman Setup
- Headers tab >> key: content-type, value: application/json (auto-populate)

Before posting:
*app/controllers/application_controller*
Add this: skip_before_action :verify_authenticity_token


Adding existing code to GitHub
- Create new Rails app:
- $ rails new wildlife_tracker -d postgresql -T
- $ cd wildlife_tracker
- Copy line from Github section: **…or push an existing repository from the command line**
- (mine looks like this - yours will be different) $ git remote add origin https://github.com/learn-academy-2020-echo/wildlife-tracker-sjproctor.git
- $ git status (to make sure you have UNTRACKED files)
- $ git add .
- $ git commit -m "initial commit"
- $ git push origin master
