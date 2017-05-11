require 'user'

describe User do
  subject(:user){ User.new }
  it 'can be instantiated' do
    expect(user).to be_instance_of(User)
  end
end
