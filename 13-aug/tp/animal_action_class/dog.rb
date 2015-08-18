require "./animal.rb"

class Dog < Animal

  def balk
    puts "woof"
  end

  def eat
    super
    "bones are yummy"
  end


end
