print "Please enter a sentence: "

sentence = gets.chomp.split
new_sentece = []
sentence.each do |word|
   new_sentece << word.capitalize
end

puts new_sentece.join(" ")


# Solution 2

print "Please enter a sentence: "

b = gets.chomp.split

b.each {|x| print x.capitalize, " "}
