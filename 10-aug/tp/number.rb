print "Please enter a number: "

x = gets.to_i

if (x % 3) == 0
  x = x**3
  puts "value is: #{x}"
elsif (x % 2) == 0
  x = x**2
  puts "value is: #{x}"
else
  puts x
end
