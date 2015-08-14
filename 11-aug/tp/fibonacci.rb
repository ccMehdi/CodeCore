#Given a number N from the user. Generate an array that contains the first
#N numbers of the fibonacci sequence.note: In mathematics, the Fibonacci
#numbers or Fibonacci series or Fibonacci sequence are the numbers in the
#following integer sequence: 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, ...

print "Please input a number: "

num = gets.chomp.to_i

low_number = 0
puts high_number = 1

(num -1).times do |x|
  new_number = low_number + high_number
  puts new_number
  low_number = high_number
  high_number = new_number
end
