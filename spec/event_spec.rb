require 'event'

describe Event do
  subject(:event) { Event.new }

  it 'can be instantiated' do
    expect(event).to be_instance_of(Event)
  end
end
