require 'grid'

describe Grid do
  subject(:grid) { Grid.new }
  it 'can be instantiated' do
    expect(grid).to be_instance_of(Grid)
  end
end
