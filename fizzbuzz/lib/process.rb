class TeamPicker

  attr_accessor :number_of_team, :name, :player_per_team, :team

  def initialize(number_of_team, name, player_per_team)
    @number_of_team, @name, @player_per_team = number_of_team, name, player_per_team
    @team = []
    @teams = Hash.new(0)
    @unassigned = []
  end

  def selector

    counter = 0
    @name.each_slice(@player_per_team) {|a| @team << a}
    @team.each_with_index do |t, v|
      if (v+1) <= @number_of_team
        @teams["#{v+1}"] = t
      else
        @unassigned << t
      end
    end
    @unassigned.flatten.each do |x|
      counter += 1
      @teams["#{counter}"] << x
    end
    @teams

  end


end

class Car

    attr_reader :year

    def initialize(year)
      @year = year
      @results = ""
    end

    def get_info

      case @year
      when (2016..4000)
         @results = "Your car is in the future"
      when (2010..2015)
        @results = "Your car is pretty new"

      when (2000..2009)
        @results = "Your car is old"

      when (1990..1999)
        @results = "Your car is very old"

      when (0..1989)
        @results = "Your car is ancient"
      else
       @results = "I do not know"
     end
     @results
     end
end

private

def fizz_buzz(start_number, end_number)
  arr = []
  (1..100).map do |x|
    if (x % start_number) == 0 && (x % end_number) == 0
       arr << "FizzBuzz"
    elsif (x % start_number) == 0
       arr << "Fizz"
    elsif (x % end_number) == 0
       arr << "Buzz"
    else
      arr << "#{x}"
    end
  end
  arr
end
