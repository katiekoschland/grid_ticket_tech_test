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
end

  it '#closest events' do
    expect(user).to respond_to(:closest_events)
  end

  describe '#five_closest_events' do
    before(:each) do
      user_w_coord = 4
      user_z_coord = 6
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
end
