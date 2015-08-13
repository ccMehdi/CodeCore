questions = ["What is your name", "How are you?", "Is that right?",
              "Are you John?", "How is everything?"]

# solution 1
print questions.select{ |longest| longest.length > 15}


# solution 2
longer_questions = []

questions.each do |x|
  if (x.length >15)
    longer_questions << x
  end
end

print longer_questions
