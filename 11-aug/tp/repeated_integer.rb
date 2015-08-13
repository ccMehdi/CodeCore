# This will generate an array that have numbers 1 to 1000000
number = (1..1000000).to_a

# This will add a random element from the array back to itself
number << number.sample



# Solution 1
before_time = Time.now

frequencies = Hash.new(0)

number.each do |number|
  if frequencies[number] == 0 # If the number of time it appears is 0,
    frequencies[number] += 1 # we add one.
  else
    puts "#{number} is repeated" #if the number has already appeared (frequencies[number] != 0), we have found the repeat
    # this will stop the loop from continuing. Because we have found the repeated integer
    break
  end
end

after_time = Time.now
puts "Solution one took #{(after_time - before_time) * 1000}"

# Solution 2

size = number.count

for ind in 0...size
  if number[number[ind].abs] > 0
      number[number[ind].abs]= -(number[number[ind].abs])
    else
      puts "#{number[ind].abs} is repeated"
  end
end
