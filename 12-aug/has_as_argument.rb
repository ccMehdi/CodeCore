def first_value(hash = {})
  # hash.first returns and array of the first key-value par
  hash.first[1]
end

puts first_value({a: "bob", b: "john"})
puts first_value a: 1, b: 2
