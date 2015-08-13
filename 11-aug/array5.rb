a = [[1,2,3], [4,5,6], [7,8,9]]
puts a.flatten

b = [[1,2,3], [4,5,6], [7,8,9]]

puts b.flat_map{|x| x}

puts "#{array.join}"

array.each do |x|
  x.each do |y|
    puts y
  end
end

# array.each {|x|}
