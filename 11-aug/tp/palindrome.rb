print "please enter a word: "

value = gets.chomp.to_s.downcase

def is_palindrome(word)

  if word == word.reverse
    puts "This is a palidrome"
  else
    puts "This is not a palidrome"
  end
end

is_palindrome(value)  
