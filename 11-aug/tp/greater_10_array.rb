my_array = [1,4,5,23,14,"Hello there", false, nil]

new_arr = []
my_array.each do |x|
  if (x.is_a? Integer) && x > 10
    new_arr << x
  end
end

print new_arr
