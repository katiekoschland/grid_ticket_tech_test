require 'grid'

describe Grid do
  subject(:grid) { Grid.new }

  it 'can be instantiated' do
    expect(grid).to be_instance_of(Grid)
  end

  it 'has 441 cells' do
    expect(grid.coordinates.length).to eq(441)
  end
end
