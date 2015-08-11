#gets = Prompt user to enter something
#chomp = Removes the new line "/n"

#print use to display message
#ask user to enter first number, waiting for user input the number and convert to integer
print "Please enter a number: "

#first_number = gets.to_i this is also valid as we are converting to integer
first_number = gets.chomp.to_i



#ask user to enter second second number, waiting for user input the number and convert to integer
print "Please enter another number: "

#second_number = gets.to_i this is also valid as we are converting to integer
second_number = gets.chomp.to_i

total = second_number*first_number

#This is also a valid way: print "The multiplication is equal to: #{first_number * second_number}"

print "The multiplication is equal to: #{total}"
