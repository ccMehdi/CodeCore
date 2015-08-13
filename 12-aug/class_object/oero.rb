require "./cookie.rb"

# We call "Cookie" the super class or parent class
# We call "Oero" the sub class or the child class
class Oero < cookie

  attr_accessor :filling_type

  # This re-defines (or overrides) the method that came with the
  # cookie class
  def bake
    puts "Baking the Oero Cookie"

    # Super calls a method with the same name in the parent class
  end
end
