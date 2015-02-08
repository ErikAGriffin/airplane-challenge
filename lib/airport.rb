class Airport

  attr_reader :weather
  attr_reader :airplanes

  def initialize
    @weather = 'sunny'
    @airplanes = []
  end

  def get_weather
    rand(30) > 19 ? @weather='stormy' : @weather = 'sunny'
  end

  def house(plane)
    @airplanes << plane
  end

  def release(plane)
    @airplanes.delete(plane)
  end

    # Works because when true the array
    # @airplanes is returned. Any object
    # not false or nil is treated as true.

  def approve_for_landing?(plane)
    @weather == 'sunny' ? house(plane) : false
  end

  def approve_for_takeoff?(plane)
    @weather == 'sunny' ? release(plane) : false
  end






end
