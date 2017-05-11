require 'json'

class User

  attr_reader :user_w_coord, :user_z_coord, :x_coord_events, :y_coord_events, :event_ids, :event_location

  def initialize(w,z)
    @user_w_coord = w
    @user_z_coord = z
    @x_coord_events = []
    @y_coord_events = []
    @event_ids = []
    event_location
  end


  def event_location
    file = File.read('event_data.json')
    events = JSON.parse(file)
    events.each do |event|
      @x_coord_events << event["x_coord"]
      @y_coord_events << event["y_coord"]
      @event_ids << event["unique_id"]
    end
  end
end
