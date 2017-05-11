require 'json'
require_relative 'event'

class Coordinate

  attr_reader :x_y, :event, :x_coord, :y_coord

  def initialize(x, y)
    @x_y = x, y
    @x_coord = x
    @y_coord = y
    @event = nil
    load_events
  end

  def load_events
    file = File.read('event_data.json')
    events = JSON.parse(file)
    events.each do |event|
      if event["x_coord"] == @x_coord && event["y_coord"] == @y_coord
        @event= event["unique_id"]
      end
    end
  end

end
