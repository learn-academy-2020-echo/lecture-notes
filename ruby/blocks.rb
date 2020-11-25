# Ruby Blocks
# 11/25/2020

# Block - anonymous function passed to a method

# define a blick in two ways:
# do/end
# {}

# Iterators

# times
# times is the method and the do/end is the block, what is in the block is executable code

# 5.times do
#   p 'hello'
# end

# Does the same thing, but with curly braces
# Curly braces are typically used for one liners

# 5.times {p 'hello'}

# nums = 5
# nums.times do
#   p 'hello'
# end

# Increment a number for each iteration
# number = 1
#
# 10.times do
#   p number * 2
#   number += 1
# end

# each
# Each runs on an array - uses the array's length to determine the number of iterations

# numbers = [4, 5, 6, 7, 8]
# numbers.each do
#   p 'yo'
# end

# Passing a local variable to the block in pipes
# numbers.each do |banana|
#   p banana * 2
# end


# Map

# numbers = [4, 5, 6, 7, 8]

# multArr = numbers.map do |value|
#   value * 3
# end
# p multArr

# def multArr banana
#   banana.map do |value|
#     value * 3
#   end
# end
# p multArr numbers
# p multArr [3, 4, 5]
# p multArr [8, 5, 6]

# def multArr banana
#   banana.map do |value|
#     if value % 2 == 0
#       'even'
#     else
#       'odd'
#     end
#   end
# end
# p multArr numbers
# p multArr [3, 4, 5]
# p multArr [8, 5, 6]

# .even? and .odd? are just syntatical sugar on the modolo operator

# def multArr banana
#   banana.map do |value|
#     if value.even?
#       'even'
#     else
#       'odd'
#     end
#   end
# end
# p multArr numbers
# p multArr [3, 4, 5]
# p multArr [8, 5, 6]
# p numbers

# Passing the bang operator to map makes it a mutator
# def multArr banana
#   banana.map! do |value|
#     if value.even?
#       'even'
#     else
#       'odd'
#     end
#   end
# end
# p multArr numbers
# # Array is now modified
# p numbers


# Passing the bang operator to map makes it a mutator
# def multArr banana
#   newArr = banana.map do |value|
#     if value.even?
#       'even'
#     else
#       'odd'
#     end
#   end
#   newArr.join" "
#   # This works too
#   # newArr.join(" ")
# end
# p multArr numbers
# # Array is now modified
# p numbers



numbers = [3, 4, 5, 6, 7, 8]
#
# def is_even array
#   array.select do |value|
#     value.odd?
#   end
# end
#
# p is_even numbers

words = ['hello', 'yo', 'hey', 'hi']

def is_even array
  array.select.with_index do |value, index|
    index.even?
  end
end

p is_even words
