class Airplane

  attr_reader :status

  def initialize
    @status = 'flying'
  end

  def land(location)
    @status = location
  end

  def takeoff
    @status = 'flying'
  end

  def request_landing_at(destination)
    land(destination) if destination.approve_for_landing?(self)
  end

  def request_takeoff_from(airport)
    takeoff if airport.approve_for_takeoff?(self)
  end

end
