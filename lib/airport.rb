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

  def approve_for_landing?(plane)
    if @weather == 'sunny'
      house(plane)
      return true
    else
      return false
    end
  end

  def approve_for_takeoff?(plane)
    if @weather == 'sunny'
      release(plane)
      return true
    else
      return false
    end
  end




end
