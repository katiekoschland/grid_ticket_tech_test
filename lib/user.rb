require 'json'

class User

  attr_reader :user_w_coord, :user_z_coord, :manhattan_distance, :five_closest_events

  def initialize(w,z)
    @user_w_coord = w
    @user_z_coord = z
    @manhattan_distance = []
    manhattan_distance
    @five_closest_events = []
    five_closest_events
  end

  def manhattan_distance
    file = File.read('event_data.json')
    events = JSON.parse(file)
    events.each do |event|
      x_abs_dist =  (event["x_coord"] -  user_w_coord).abs
      y_abs_dist =  (event["y_coord"] -  user_z_coord).abs
      @manhattan_distance << x_abs_dist + y_abs_dist
    end
  end

  def five_closest_events
    @five_closest_events = @manhattan_distance.min(5)
  end

end
