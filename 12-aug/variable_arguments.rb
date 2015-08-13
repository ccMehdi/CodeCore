def sum(*numbers)
  print numbers
end


def multiply(a, *b)
  result = a
  b.each {|x| result *= x}
  result
end

puts multiply 2,3,4
puts multiply 2
puts multiply 5,6,7,8,9,10
