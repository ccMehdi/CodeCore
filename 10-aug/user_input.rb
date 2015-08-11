#Ask user for a number then print out the number multiplied by 5 and then the same number added to itself
print "Please input a number: "

number = gets.chomp.to_i

#multiply input number by 5
puts "Number multiplied by 5: #{number * 5}"

#add number to itself
puts puts "Number multiplied by 5: #{number + number}"
