require 'grid'

describe Grid do
  subject(:grid) { Grid.new }

  it 'can be instantiated' do
    expect(grid).to be_instance_of(Grid)
  end

  it 'has 441 cells' do
    expect(grid.cells.length).to eq 441
  end
end
