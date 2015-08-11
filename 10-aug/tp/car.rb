print "Please enter the year of your car: "
year = gets.to_i

if year >= 2016
   puts "Your car is from the future"
elsif year >= 2010
   puts "Your car pretty new"
elsif year >= 2000
   puts "Your car is old"
 elsif year >= 1990
    puts "Your car is very old"
elsif year < 1990
   puts "Your car is Ancient"
end
