require 'user'

describe User do
  subject(:user){ User.new }

  describe '#instantiation' do

    it 'can create instances of User' do
      expect(user).to be_instance_of(User)
    end

    it 'events' do
      expect(user.events).to eq([])
    end

    it 'events_ordered_by_dist' do
      expect(user.events_ordered_by_dist).to eq([])
    end

    it 'five_closest_events' do
      expect(user.five_closest_events).to eq([])
    end

    it '#closest events' do
      expect(user).to respond_to(:closest_events)
    end
  end

  describe '#five_closest_events' do

    before(:each) do
      user_w_coord = 4
      user_z_coord = 5
    end

    it '#manhattan_distance' do
      expect(user.manhattan_distance.length).to eq(100)
    end

    it '#events_ordered_by_dist' do
      user.manhattan_distance
      user.five_closest_events
      expect(user.events_ordered_by_dist.length).to eq(100)
    end

    it '#five_closest_events' do
      user.manhattan_distance
      expect(user.five_closest_events.length).to eq(5)
    end
  end

  describe 'Finding Closest Events' do

    it 'Accepts coordinates as user input and returns five closest events' do
      user.welcome_viagogo
      user_w_coord = 4
      user_z_coord = 5
      user.manhattan_distance
      user.five_closest_events
      body = "Closest events to: 4, 5 \nEvent 39 -$277.00, Distance: 1\Event 41 -$164.14, Distance: 2\Event 50 -$169.47, Distance: 2\nEvent 65 -$29.92, Distance: 2\nEvent 66 -$281.28, Distance: 3"
      expect{user.closest_events}.to output{body}.to_stdout
    end

  end
end
