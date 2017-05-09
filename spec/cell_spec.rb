require 'cell'

describe Cell do
  subject(:cell) { Cell.new(3, 8) }

  it 'can be instantiated' do
    expect(cell).to be_instance_of Cell
  end

  it 'each cell has an x and y co-ordinate' do
    expect(cell.coordinates).to eq([3, 8])
  end

end
