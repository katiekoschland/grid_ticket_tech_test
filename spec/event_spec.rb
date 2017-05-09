require 'event'

describe Event do
  subject(:event) { Event.new }

  it 'can be instantiated' do
    expect(event).to be_instance_of(Event)
  end

  it 'responds to unique_id, ticket quantity and price($)' do
    expect(event).to respond_to(:unique_id, :ticket_quantity, :price_in_dollars)
  end

end
