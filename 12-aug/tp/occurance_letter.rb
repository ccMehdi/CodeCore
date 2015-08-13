print "Enter a phrase: "
phrase = gets.chomp.downcase.delete(' ').split(//)

letters_counts = Hash.new(0)

phrase.each do |x|
  letters_counts[x] += 1
end

puts letters_counts
