require 'grid'

describe Grid do
  subject(:grid) { Grid.new }

  describe '#initialize' do

    it 'can be instantiated' do
      expect(grid).to be_instance_of(Grid)
    end
  end

  describe '#generate_grid' do
    it 'generates 441 coordinates' do
      expect(grid.coordinates.length).to eq(441)
    end
  end
end
