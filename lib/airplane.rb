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



end
