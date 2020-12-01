class Dog
  #                   4
  def initialize classification
    #                     5
    @classification = classification
  end

  def get_dog_info
    @classification
  end

  def return_something
    "TEST"
  end
end

class Pointer < Dog
  #                 2
  def initialize classification
    # super calls the method of the same name in the parent class
    #          3
    super(classification)
  end

  def get_info
    @classification
  end
end
#                           1
first_dog = Pointer.new "hunting"
p first_dog
p first_dog.return_something

class Gsp < Pointer
  def initialize(classification, breed, name)
    super(classification)
    @breed = breed
    @name = name
    @size = "large"
    @origin = "Germany"
  end

  def get_gsp_info
    "#{ @name } is a #{ @breed }, which is a #{ @classification } dog. They are considered #{ @size }-sized and are from #{ @origin }."
  end
end

jax = Gsp.new("hunting", "GSP", "Jax")
ricky = Gsp.new("hunting", "GSP", "Ricky")
# p ricky.get_gsp_info

# class Hound < Dog
#   def initialize classification
#     super(classification)
#   end
#
#   def get_hound_info
#     "Hounds possess strong ancestral traits, renowned for their exceptional scenting abilities, great speed, or keen sight. Traditionally hound dogs lead the hunt rather than waiting for the hunter's directions."
#   end
# end
#
# class Bloodhound < Hound
#   def initialize(classification, breed, name)
#     super(classification)
#     @breed = breed
#     @name = name
#     @size = "extra large"
#     @origin = "Belgium"
#   end
#
#   def get_bloodhound_info
#     "#{ @name } is a #{ @breed }, which is a #{ @classification } dog. They are considered #{ @size }-sized and are from #{ @origin }."
#   end
# end
#
# roofus = Bloodhound.new("hunting", "Bloodhound", "Roofus")
# p roofus.get_bloodhound_info
# p roofus.get_hound_info
# p roofus.get_dog_info










#
