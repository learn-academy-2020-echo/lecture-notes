# Params

Parameters are content added to the url. It is a way of passing in information to the controller method.

### Hard Coded Tacos
- Create a instance variable with a hard coded value

```ruby
def tacos
  @my_taco = 'carnitas'
end
```

- Create the view called *tacos.html.erb*

```
<h1>Hello! We like Tacos</h1>

<h3>I like <%= @my_taco %> tacos.</h3>
```

- Create the route

```ruby
get '/tacos' => 'main#tacos'
```

- The browser will render our data.

### Tacos as Params
- Create a instance variable that looks for a value from params

```ruby
def tacos
  @my_taco = params[:my_taco]
end
```

- Pass params to the url by assigning my_taco to a value

```
http://localhost:3000/tacos?my_taco=fish
```

- The browser will render our data.

### Tacos as Params with Routes
- Update the route to expect a param

```ruby
get '/tacos/:my_taco' => 'main#tacos'
```

```
http://localhost:3000/tacos/fish
```

- The browser will render our data.


### Multiple Params
- Create two instance variables that looks for values from params

```ruby
def numbers
  @number1 = params[:num1]
  @number2 = params[:num2]
end
```

- Create a view *numbers.html.erb*

```
<h1>Numbers</h1>

<p>This in number 1: <%= @number1 %></p>
<p>This in number 2: <%= @number2 %></p>
```

- Create a route that expects two params

```ruby
  get '/numbers/:num1/:num2' => 'main#numbers'
```

- In the browser pass two params

```
http://localhost:3000/numbers/4/2
```

- Parameters are a hash, we can see how they are stored in the Rails log in the terminal:

```
Processing by MainController#numbers as HTML
  Parameters: {"num1"=>"4", "num2"=>"2"}
```

- Can perform logic on the instance variables

```ruby
def numbers
  @number1 = params[:num1]
  @number2 = params[:num2]
  if @number1.to_i < @number2.to_i
    @banana = 'You win'
  else
    @banana = 'Try again'
  end
end
```

- Update the view

```
<h1>Numbers</h1>

<p>This in number 1: <%= @number1 %></p>
<p>This in number 2: <%= @number2 %></p>

<p>The output is <%= @banana %> </p>
```
