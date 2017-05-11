require 'user'

describe User do
  subject(:user){ User.new(5,4) }
  it 'can be instantiated' do
    expect(user).to be_instance_of(User)
  end

  it 'has the correct w coordinate' do
    expect(user.user_w_coord).to eq(5)
  end

  it 'has the correct z coordinate' do
    expect(user.user_z_coord).to eq(4)
  end

  # it 'x_coord_events is not empty' do
  #   expect(user.event_location.length).to eq(100)
  # end

  it 'can return 100 manhattan_distances' do
    expect(user.manhattan_distance.length).to eq(100)
  end
  it 'can return the five closest_events' do
    expect(user.five_closest_events.length).to eq 5
end
end
