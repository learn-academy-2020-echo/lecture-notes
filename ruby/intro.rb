# Ruby Ruby Ruby Ruby!
# 11/24/2020

# Yukihiro Matsumoto
# Mats is nice and so we are nice - MINASWAN

# Dynamically typed - don't have to declare the type of data you intend to assign to a variable, and you can reassign to be any type

# Scripting - logic language

# Open-source - online and available for free, can be modified by anyone

# Object-oriented - (OOP) form is the class, object is the reality, Ruby is VERY object-oriented

# Ruby console - $ irb
# Exit the ruby console > exit

# Data types

# Integer - add, subtract, multiply, divide, modulo
# Float - non-whole numbers, must introduce a float to get a float back

# String - single quotes as per the style guide
# - Two execptions - punctuation
# - String interpolation " #{}"

# Boolean
# - relational operators - <, >, <=, >=
# - Equality operators - ==, Ruby does not support type cooersion, bang operator that negates !=
# - Logical operators - &&, ||

# Nil - like null, equal to nothing else

# Symbol - unique identifier

# Variables - no declaration, snake_case, single equal sign to assign a value

# Built in Methods - all are accessors, meaning they don't change the element they are acted on
# - length
# - upcase
# - capitalize
# - include - methods that have ? will return a boolean value

# This works!
# my_name.include?('sa') --> true
# my_name.include?('a' && 's') --> true

# This doesn't work
# my_name.include?('s', 'a') --> error
# my_name.include?('as') --> false

# .class - returns the actual class
# .to_s - changes into a string
# .to_i - changes to an integer

# Arrays
# my_nums = [1, 2, 3, 4, 5]
# my_nums[1] --> reference by index to return the value
# my_nums.length
# my_nums.reverse


# Mutators
# Reassign a value - my_nums[3] = 29
# Shovel - my_nums << 88
# Bang operator on a method - my_nums.reverse!
