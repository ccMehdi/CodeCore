print "Enter a phrase: "
phrase = gets.chomp.downcase.delete(' ').split(//)

letters_counts = Hash.new(0)

phrase.each do |x|
  letters_counts[x] += 1
end

letter = letters_counts.max_by {|k,v| v}.first
amount = letters_counts.max_by {|k,v| v}.last

puts "The letter #{letter} has been used #{amount} of times"
