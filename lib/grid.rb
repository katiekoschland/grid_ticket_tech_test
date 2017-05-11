class Grid

  MAX_VALUE = 10
  MIN_VALUE = -10
  attr_reader :coordinates

  def initialize
    @coordinates= {}
    generate_grid
  end

  private

  def generate_grid
    (MIN_VALUE..MAX_VALUE).each do |x|
      (MIN_VALUE..MAX_VALUE).each do |y|
        @coordinates["#{x},#{y}"] = Coordinate.new(x,y)
      end
    end
  end

end
