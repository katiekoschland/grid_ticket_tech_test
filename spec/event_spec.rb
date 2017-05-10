require 'event'

describe Event do
  subject(:event) { Event.new(2) }

  describe '#initialize' do
    it 'can be instantiated' do
      expect(event).to be_instance_of(Event)
    end

    it 'responds to load_data' do
      expect(event).to respond_to(:load_data)
    end
  end

  describe '#each_event' do
    it 'corresponds to the correct id' do
      expect(event.unique_id).to eq(2)
    end

    it 'has the correct ticket quantity' do
      expect(event.ticket_quantity).to eq(1204)
    end

    it 'has the correct ticket price' do
      expect(event.ticket_price).to eq("$307.60")
    end

    it 'has the correct co-ordinates' do
      expect(event.coordinates).to eq([-10, 7])
    end
  end
end
