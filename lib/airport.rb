class Airport

  attr_reader :weather, :airplanes

  def initialize
    @weather = 'sunny' #consider using symbols
    @airplanes = []
  end

  def get_weather
    rand(30) > 19 ? @weather = 'stormy' : @weather = 'sunny'
  end

  def house(plane)
    airplanes << plane
  end

  def release(plane)
    airplanes.delete(plane)
  end

  def approve_for_landing?(plane)
    sunny? ? house(plane) : false
  end

  def approve_for_takeoff?(plane)
    sunny? ? release(plane) : false
  end

  def sunny?
    weather == 'sunny'
  end
end
