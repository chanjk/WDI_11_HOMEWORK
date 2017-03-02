# Create a Monkey class in monkey.rb, which has the following attributes:
#
# name - a string, which should be determined by some input
# species - a string, which should be determined by some input
# foods_eaten - an array, which should be initialized as an empty array
# And the following methods:
#
# eat(food) - adds a food (a string) to the list of foods eaten
# introduce - introduces self, with name, species, and what it's eaten
# Create another file app.rb to use test out the Monkey class
# you should be able to call all the following methods
#
# adam = Monkey.new("Adam", "Spider Monkey")
# adam.eat('fruit salad')
# adam.eat('banana milkshake')
# adam.introduce # "Hi my name is Adam. I am a Spider Monkey. I had fruit salad and banana milkshake for brunch"
require 'pry'

class Monkey
  attr_accessor  :name, :species
  #attr_reader
  #attr_writer

def initialize(name, species)

  @name = name
  @species = species
  @foods_eaten = []
end

# def get_name
#   @name
#
# end
#
# def set_name(name)
#   @name = name
#
# end
#
# def get_species
#   @species
#
# end
#
# def set_species
#   @species
#
# end


def eat(food)
  @foods_eaten << food

end

def introduce

   "Hi my name is #{ @name }. I am a #{ @species }. I had #{ @foods_eaten.join(' and ') } for lunch."

end


end
binding.pry
