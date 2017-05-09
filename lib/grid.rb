class Grid

  attr_reader :cells

  def initialize
    @cells = []
    generate_grid
  end

  private

  def generate_grid
    [*-10..+10].each do |x|
      [*-10..+10].each do |y|
        @cells << Cell.new(x,y)
      end
    end
  end

end
