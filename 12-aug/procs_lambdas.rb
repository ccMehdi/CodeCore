my_lambda = lambda {puts "I am lambda"}

puts my_lambda.call

def my_metho(code)
  puts ">>>>>>>>> Start"
  code.call
  code.call
  puts ">>>>>>>>> End"
end

my_metho(my_lambda)
