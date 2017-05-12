require 'json'

class User

  attr_reader :user_w_coord, :user_z_coord, :events, :events_ordered_by_dist, :five_closest_events

  def initialize(w, z)
    @user_w_coord = w
    @user_z_coord = z
    @events = []
    manhattan_distance
    @events_ordered_by_dist = []
    @five_closest_events = []
    five_closest_events

  end

  def manhattan_distance
    file = File.read('event_data.json')
    events = JSON.parse(file)
    events.each do |event|
      x_abs_dist =  (event["x_coord"] -  user_w_coord).abs
      y_abs_dist =  (event["y_coord"] -  user_z_coord).abs
      @events << [ event["unique_id"], event["ticket_price"], x_abs_dist + y_abs_dist]
    end
  end

  def five_closest_events
    @events_ordered_by_dist += @events.sort_by { |e| e[2] }
    @five_closest_events = @events_ordered_by_dist.take(5)
  end

end
