require 'coordinate'

describe Coordinate do
  subject(:coordinate) { Coordinate.new(3, 8) }

  it 'can be instantiated' do
    expect(coordinate).to be_instance_of Coordinate
  end

  it 'each cell has an x and y co-ordinate' do
    expect(coordinate.coordinates).to eq([3, 8])
  end

  it 'has no events upon instantiation' do
    expect(coordinate.event).to be nil
  end

  it 'responds to load_events' do
    expect(coordinate).to respond_to(:load_events)
  end
end

describe '#load_events' do
  subject(:coordinate) { Coordinate.new(-7, 0)}

  it 'can store coordinates' do
    expect(coordinate.event).to eq(81)
  end
end
