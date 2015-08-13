arr = ["a", "b", "c", "d"]
new_arr = []

arr.length.times do
  new_arr << arr.pop
end

puts new_arr
