# Routes, Views, Controllers

### Setup
- Generated a controller (controller's name is PascalCase)
- $ rails generate controller Home
- Added controller method that will render html

```ruby
def greeter
  render html: 'Yo!'
end
```

- Added the route that will call the controller
- Routes live in *config/routes.rb*

```ruby
get '/greeter' => 'home#greeter'
```
- All the verbs: get, put, delete, patch, post
- Parts of the route:
  - get - http verb (get is for reading static data)
  - '/greeter' - the url, or what is appended to localhost:3000
  - 'home#greeter' - call the controller (home) and the method in the controller (greeter)

### Beverage
- Made a controller method
- Rendered a view file rather that just html
- Made a file in app/view/home/*beverage.html.erb*
- Erb - embedded ruby
- Make a route for beverage

### Tacos
- Made controller method
- Declared an instance variable
- Made a view file in app/views/home/*tacos.html.erb*
- Added some html and erb
- Erb tags look like this: <%= ruby code here %>
- Made a route for tacos

### Landing Page
- Made a controller method
- Made a view file in app/views/home/*landing.html.erb*
- Added links using a Ruby helper method called `link_to` that takes two arguments: 1) an anchor, 2) the path that you want to navigate to
- Made a route for landing page


### Sharing a Rails App
- If you are cloning a Rails app, you must create the database and run $ bundle
