class AwesomeException < StandardError

end

def print_awesome(x)
  if x != "awesome"
    raise ArgumentError, 'Wrong argument'
    raise AwesomeException, 'You suck'
  end
  puts x
end

begin
  print_awesome("awesome")
rescue AwesomeException
  puts "Please try again"
rescue ArgumentError
  puts "Wrong Argument Error please try again"
end
