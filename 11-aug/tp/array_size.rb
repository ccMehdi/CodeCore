#Given an array of words. Return back an array of numbers that contains the
#length of each word in the first array in the same order.

arr = ["word", "john", "excellent", "bob"]
word_length = []

arr.each do |word|
  x = word.count("a-z")
  word_length << x
end

puts word_length
