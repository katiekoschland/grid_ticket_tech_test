require 'json'

class Event

  attr_reader :unique_id, :ticket_quantity, :ticket_price, :coordinates

  def initialize(unique_id)
    @unique_id = unique_id
    @ticket_quantity = nil
    @ticket_price = nil
    @coordinates = nil
    load_data
  end

  def load_data
    file = File.read('event_data.json')
    events = JSON.parse(file)
    events.each do |event|
      if event["unique_id"] == @unique_id
        @ticket_quantity = event["ticket_quantity"]
        @ticket_price = event["ticket_price"]
        @coordinates = event["x_coord"], event["y_coord"]
      end
    end
  end

end
