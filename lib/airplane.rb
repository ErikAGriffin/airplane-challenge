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
    if destination.approve_for_landing?(self)
      self.land(destination)
      # !!
      p self.status
    end
  end



end
