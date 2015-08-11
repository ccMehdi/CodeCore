print "Please enter your score: "
grade_number = gets.to_i

if grade_number >= 90
  grade = "A"
elsif grade_number >= 80
  grade = "B"
elsif grade_number >= 70
  grade = "C"
elsif grade_number >= 60
  grade = "D"
else grade_number < 60
  grade = "E"
end

puts "Your grade is: #{grade}"
