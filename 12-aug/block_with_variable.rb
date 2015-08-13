def greeting
  puts ">>> START"
  name = "Mehdi"
  yield(name)
  puts ">>> END"
end


greeting do |name|
  puts "Hello #{name}"
end

greeting do |n|
  puts "Bye #{n}"
end
