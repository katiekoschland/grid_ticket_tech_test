require 'cell'

describe Cell do
  subject(:cell) { Cell.new }

  it 'can be instantiated' do
    expect(cell).to be_instance_of Cell
  end

end
