require 'json'

class User

  attr_reader :user_w_coord, :user_z_coord, :x_coord_events, :y_coord_events, :event_ids, :event_location, :manhattan_distance

  def initialize(w,z)
    @user_w_coord = w
    @user_z_coord = z
    @x_coord_events = []
    @y_coord_events = []
    @event_ids = []
    event_location
    @manhattan_distance = []
    manhattan_distance
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

private
  def manhattan_distance
    (0..@x_coord_events.length-1).each do |i|
      (0..@y_coord_events.length-1).each do |j|
        x_abs_dist =  (@x_coord_events[i] -  user_w_coord).abs
        y_abs_dist =  (@y_coord_events[j] -  user_z_coord).abs
        @manhattan_distance << x_abs_dist + y_abs_dist
      end
    end
  end

end
