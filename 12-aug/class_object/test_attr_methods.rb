class TestAttrMethods

  def initialize(a, b="Hello!", c="Bonjour!")
    @a = a
    @b = b
    @c = c
  end

  attr_reader   :a
  attr_accessor :b
  attr_writer   :c


  def greeting
    puts "#{a} #{b} #{@c}"
  end

end
