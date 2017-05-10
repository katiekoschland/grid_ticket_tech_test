class Coordinate

  attr_reader :coordinates, :event

  def initialize(x, y)
    @coordinates = x,y
    @event = nil
  end

end
