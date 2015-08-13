# to define a class you use the "class" keyword
# Class names must start with a capital letter - Classes are treated
# as constants in Ruby
# Naming convention for a class name is CamelCase
class Cookie

  def initialize(sugar_amount, four_amount)
    @sugar_amount = sugar_amount
    @flour_amount = flour_amount
  end

  # this defines an instance (or object) methode called 'bake'
  # this is a public method. This can be called:
  # c = Cookie.new
  # c.bake
  def bake
    "baking the cookie"
  end

  # this defines an instance (or object) methode called 'eat'
  def eat
    "Eating the cookie"
  end

  # This defines a public class method
  # Class method called directly on the class. Must use capital letter, ex: Cookie.info

  def self.info
    # You can only call class method in here
    "I'm a Cookie class"
  end

  private

  # This defines a private class method
  def self.extra_info
    puts "I am a super cookie"
  end

  def dip_in_milk
    "dipping in the milk"
  end
end
