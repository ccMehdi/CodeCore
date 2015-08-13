print "Please input something: "
x = gets.chomp

input = []
input_counts = Hash.new(0)

while x != "exit"
  input << x
  input_counts["input"] += 1
  print "Please input something: "
  x = gets.chomp
end

input_counts.each {|key, value| puts "You've entered #{value} inputs" }
