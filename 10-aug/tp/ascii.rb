#Simple ASCII Art

puts "How many O do you want in your pyramide?"
x = gets.chomp.to_i


star_string = " O "
width = 30

x.times do

  puts star_string.center(width)
    star_string = star_string + "O "
    
end
