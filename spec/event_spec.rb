require 'event'

describe Event do
  subject(:event) { Event.new }

  it 'can be instantiated' do
    expect(event).to be_instance_of(Event)
  end

  it 'responds to unique_id, ticket quantity, price($), x_coord, y_coord' do
    expect(event).to respond_to(:unique_id, :ticket_quantity, :ticket_price, :x_coord, :y_coord)
  end

end
