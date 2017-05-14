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

    it 'five_closest_events is empty' do
      expect(user.five_closest_events).to eq([])
    end

    it 'responds to closest events' do
      expect(user).to respond_to(:closest_events)
    end
  end

  describe '#five_closest_events' do

    before(:each) do
      user_w_coord = 4
      user_z_coord = 5
    end

    it 'manhattan_distance is calculated for the 100 events' do
      expect(user.manhattan_distance.length).to eq(100)
    end

    it 'events are ordered by distance' do
      user.manhattan_distance
      user.five_closest_events
      expect(user.events_ordered_by_dist.first).to eq([39, "$277.00", 1])
    end

    it 'has a length of 5' do
      user.manhattan_distance
      expect(user.five_closest_events.length).to eq(5)
    end
  end

  describe 'closest_events' do
    it 'to respond to welcome_viagogo, manhattan_distance, five_closest_events' do
      expect(user).to respond_to(:welcome_viagogo)
      expect(user).to respond_to(:manhattan_distance)
      expect(user).to respond_to(:five_closest_events)
    end

    it 'accepts coordinates as user input and returns five closest event' do
      allow(user).to receive(:gets).and_return("4 , 5")
      user.welcome_viagogo
      user.manhattan_distance
      user.five_closest_events
      body = "Closest events to: 4, 5 \nEvent 39 -$277.00, Distance: 1\Event 41 -$164.14, Distance: 2\Event 50 -$169.47, Distance: 2\nEvent 65 -$29.92, Distance: 2\nEvent 66 -$281.28, Distance: 3"
      expect{user.closest_events}.to output{body}.to_stdout
    end

  end
end
