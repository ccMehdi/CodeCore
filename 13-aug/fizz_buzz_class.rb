class Fizzbuzz

  def initialize(start_number, end_number)
    @start_number, @end_number = start_number, end_number
  end

  attr_reader :start_number
  attr_reader :end_number

  def run
    arr = []
    for x in 1..100
      if (x % start_number) == 0 && (x % end_number) == 0
        arr << "FizzBuzz"
      elsif (x % start_number) == 0
        arr << "Fizz"
      elsif (x % end_number) == 0
        arr << "Buzz"
      else
        arr << x
      end
    end
    print arr
  end
end
