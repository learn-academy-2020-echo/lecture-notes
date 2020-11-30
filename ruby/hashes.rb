# Ruby Hashes
# 11/30/2020

# Hashes - are collections of key:value pairs wrapped in curly braces

# One way to create a hash:
contact = {firstName: 'Sherlock', lastName: 'Holmes'}
p contact

# Keys - of the data type symbol, can be written with the colon first
# Value - can be any data type

# Output - symbols and hash rockets
# {:firstName=>"Sherlock", :lastName=>"Holmes"}
# Hash rocket - can be used to separate keys and values in a hash

# Another way to create a hash, referenceing the class of Hash
contact = Hash.new
p contact
# output --> {}

# Add content to a hash
contact[:first_name] = 'Sherlock'
contact[:last_name] = 'Holmes'
contact[:address] = '221B Baker Street'
p contact
# output --> {:first_name=>"Sherlock", :last_name=>"Holmes"}

# Look at one value from a hash
p contact[:first_name]
# output --> "Sherlock"

# Update a value in the hash
contact[:first_name] = 'John'
p contact
# output --> {:first_name=>"John", :last_name=>"Holmes"}

contact.delete :last_name
p contact
# output --> {:first_name=>"John"}


# Hashes are enumerable - meaning you can iterate on a hash

contact.each do |key, value|
  p "Key is #{key} and value is #{value}"
end
# Output --> "Key is first_name and value is John"
# "Key is last_name and value is Holmes"


def my_contact_info hash
  hash.map do |key, value|
    "My #{key} is #{value}."
  end
end
p my_contact_info contact
