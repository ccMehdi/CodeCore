class Car

  def initialize(model, type, capacity)
    @model = model
    @type = type
    @capacity = capacity
    #@model, @capacity, @type = model, capacity, type --> this is alos possible
  end

  def drive
    @speed = 200
    "You are driving"
  end

  def stop
    #puts pump_gas
    "You are stopped at #{@speed}"
  end

  def park
    "You are parked"
  end

  def self.max_speed
    200
  end

  private

  def pump_gas
    "You are pumping gaz"
  end

  def ignite_engine
    "You are turning on your car"
  end

end
