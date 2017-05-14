require 'user'

describe User do
  subject(:user){ User.new }

  describe '#initialize' do

    it 'can be instantiated' do
      expect(user).to be_instance_of User
    end

    it 'events is empty' do
      expect(user.events).to eq([])
    end

    it 'events_ordered_by_dist is empty' do
      expect(user.events_ordered_by_dist).to eq([])
    end

    it 'responds to closest events' do
      expect(user).to respond_to(:closest_events)
    end
  end

  describe 'closest_events' do

    it 'accepts coordinates as user input and returns five closest event' do
      allow(user).to receive(:gets).and_return("4 , 5")
      body = "Closest events to: 4, 5 \nEvent 39 -$277.00, Distance: 1\Event 41 -$164.14, Distance: 2\Event 50 -$169.47, Distance: 2\nEvent 65 -$29.92, Distance: 2\nEvent 66 -$281.28, Distance: 3"
      expect{user.closest_events}.to output{body}.to_stdout
    end

  end
end
