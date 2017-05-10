require 'json'

class Event

  attr_reader :unique_id, :ticket_quantity, :ticket_price, :x_coord, :y_coord

  def initialize

  end

def load_json
  file = File.read('event_data.json')
  event_data_hash = JSON.parse(file)
end

end
