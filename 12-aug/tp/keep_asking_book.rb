print "Please enter a books name: "
x = gets.chomp

input = []
input_counts = Hash.new(0)

while x != "exit"
  input << x
  input_counts["input"] += 1
  print "Please enter another book name or type exit to quit: "
  x = gets.chomp
end

puts "You've entered the following books:"
input.sort.each {|value| puts "#{value}," }
