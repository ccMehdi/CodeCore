print "Please enter a number from 0 to 100: "

stop_range = gets.to_i


while stop_range >= 100
  puts "Too big, try again: "
  stop_range = gets.to_i
end

for number in stop_range..100
  puts number
end
