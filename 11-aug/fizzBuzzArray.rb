# can also use arr =[]
arr = Array.new


for x in 1..100
  if (x % 3) == 0 && (x % 5) == 0
    arr << "FizzBuzz"
  elsif (x % 3) == 0
    arr << "Fizz"
  elsif (x % 5) == 0
    arr << "Buzz"
  else
    arr << x
  end
end

print arr
