class Airport

  attr_reader :weather
  attr_reader :airplanes

  def initialize
    @weather = 'sunny'
    @airplanes = []
  end

  def get_weather

    if rand(30) > 19 ? @weather : @weather
      @weather = 'stormy'
    else
      @weather = 'sunny'
    end

  end


  def land(plane)
    if @weather == 'sunny'
      approve_for_landing(plane)
      plane.land
    end
  end

  def approve_for_landing(plane)
    @airplanes << plane
  end



end
