numbers = (1..1000000).to_a
numbers << numbers.sample
numbers.shuffle!

frequencies = Hash.new(0)

numbers.each do |number|
  if frequencies[number] == 0
    frequencies[number] = 1
  else
    puts "#{number} is repeated"
    break
  end
end
