# Ruby Methods
# 11/24/2020

# def - define, keyword that sets up a method
# end - defines the code block

# the method's name is greeter

# def greeter
#   # code to be executed
#   'Yo'
# end

# calling the method and logging the output
# p greeter

# implicit return - automatically return the last line of the code

# Valid code
# def greeter
#   # code to be executed
#   return 'Yo'
# end

# Method with an argument
# def greeter name
#   "Yo, #{name}!"
# end
# p greeter "Summer"
# p greeter "Ryan"
# p greeter "Matt"

# def multiplier num1, num2
#   num1 * num2
# end
# p multiplier 3, 4



# def multiplier(num1, num2)
#   num1 * num2
# end
#
# my_num1 = 4
# my_num2 = 8
#
# p multiplier 3, 4
# p multiplier my_num1, my_num2


def voting_age number

  if number >= 21
    'You can drink and vote.'
  elsif number >=18
    'You can vote.'
  else
    'Sorry, kiddo.'
  end

end
p voting_age 14
p voting_age 18
p voting_age 78
