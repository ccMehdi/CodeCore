class Oven

  def initialize(oven_temp)
    @oven_temp = oven_temp
  end

  attr_reader :oven_temp

  def pre_heat
    "oven is pre-heating"
  end

  def temp_reached
    buzzer
    "oven is ready"
  end


  private

  def buzzer
    "Ring"
  end

end
