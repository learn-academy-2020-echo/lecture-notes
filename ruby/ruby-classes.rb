# everything in Ruby is an instance of a class
# run the method .class on something to see which class it belongs to
p 1.class
p 1.0.class
p 'learn'.class
recipe = {protein: "beans", carbs: "tortilla", veggies: "green peppers"}
p recipe.class
# an items class will define the methods and functionality available to it. for example, you can mulitply integers but not strings and you can capitalize strings but not integers.

# how can we create our own classes that have their own functionality and values?
class IceCream
  def set_label label
    # instance variables
    # The variable starting with @ is an instance variable, meaning it belongs to the "instance" of a class (an object).
    # You can't just access an instance variable from outside of an object, as you can with variables in JavaScript. Think local scope.
    @label = label
  end

  def set_flavor flavor
    @flavor = flavor
  end

  def set_calories calories
    @calories = calories
  end

  def label
    @label
  end

  def flavor
    @flavor
  end

  def calories
    @calories
  end
end

vanilla = IceCream.new
p vanilla
vanilla.set_label "dessert"
vanilla.set_flavor "vanilla"
vanilla.set_calories 150
p vanilla
p vanilla.flavor

class IceCream1
  # making all of those set and get methods is a lot of work!
  # the initialize method ensures all instances of this class will be created with some default key:values upon creation. a class doesnt HAVE to have an initialize but most all classes will have some default data that all of that class will have assigned to it.
  def initialize
    @label = "dessert"
  end

  # getter method
  def label
    @label
  end
end

mint_chip = IceCream1.new
# # when we print the object we just created using a class, we see a hash of all of the info
p mint_chip
# # we can't access instance variables on their own!
p mint_chip.label
# in order to expose instance variables to a scope outside of its own class, we need to create a "get" or "getter" method.
# the initialize method acts as our "set" or "setter" method. Instance variables must be set before you can get them.

# initialize with argument/s
class IceCream2
  # initialize
  def initialize(flavor, calories)
    # instance variables
    # The variable starting with @ is an instance variable, meaning it belongs to the "instance" of a class (an object).
    # You can't just access an instance variable from outside of an object, as you can with variables in JavaScript. Think local scope.
    @label = "dessert"
    @flavor = flavor
    @calories = calories
  end

  # getter method
  def label
    @label
  end

  def flavor
    @flavor
  end

  def calories
    @calories
  end
end

cookies_and_cream = IceCream2.new("cookies and cream", 170)
p cookies_and_cream.flavor
p cookies_and_cream.calories

# attr_accessor
# So far, we have used setter methods to set or assign values in a class, as well as getter methods to then get or retrieve those values. But there's a shortcut we can use!
class IceCream3
  attr_accessor :label, :flavor, :calories
  # initialize
  def initialize(flavor, calories)
    # instance variables
    # The variable starting with @ is an instance variable, meaning it belongs to the "instance" of a class (an object).
    # You can't just access an instance variable from outside of an object, as you can with variables in JavaScript. Think local scope.
    @label = "dessert"
    @flavor = flavor
    @calories = calories
  end
end

butter_pecan = IceCream3.new("butter pecan", 200)
p butter_pecan.label
p butter_pecan.flavor
p butter_pecan.calories
