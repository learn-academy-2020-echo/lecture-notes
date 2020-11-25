# Ruby Conditionals
# 11/24/2020

# File must have the extension .rb
# In terminal: $ ruby filname.rb

my_name = 'Sarah'

# Returns info in terminal
puts my_name
puts 'hello!'

# Returns info without a line break
print 123
print 456
print 789

p 'hello'
p my_name


# if/else/end

num = 10
if num > 20
  p "#{num} is greater than 20"
else
  p "#{num} is less than 20"
end


# Error message that is telling you to check for a missing end: " conditionals.rb:24: syntax error, unexpected end-of-input, expecting `end' "

# User Input: Gets
# Asks the user for a number
puts 'Enter a number:'

# Assings the user input to a variable and removes the extra character
# Gets always returns information as a string
num = gets.chomp

# Prints the variable
p num

# if/elsif/else/end
if num.to_i > 20
  p "#{num} is greater than 20"
elsif num.to_i < 20
  p "#{num} is less than 20"
else
  p 'Something went wrong.'
end

# A user prompt
p 'Enter a greeting:'

# Assigns a variable coming from the user input in the terminal and removes the extra character (/n)
greeter = gets.chomp

# Use the variable wherever you want
p "#{greeter} there!"
