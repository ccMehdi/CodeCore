#question one
puts "How many sides to a square have: "
puts "a) 4"
puts "b) 6"
puts "c) 8"
puts "d) 12"
print "Enter correct amount: "
q1 = gets.chomp

puts "How many sides to a triangle have: "
puts "a) 4"
puts "b) 6"
puts "c) 8"
puts "d) 3"
print "Enter correct amount: "
q2 = gets.chomp

puts "How many sides to a circle have: "
puts "a) 0"
puts "b) 6"
puts "c) 8"
puts "d) 3"
print "Enter correct amount: "
q3 = gets.chomp

if q1 == "a"
  x1 = 1
end

if q2 == "d"
   x2 = 1
end

if q3 == "a"
  x3 = 1
end

x = x1.to_i + x2.to_i + x3.to_i

puts "You got #{x} out of 3 questions correctly."
