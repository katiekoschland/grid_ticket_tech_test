require 'json'

class User

  attr_reader :user_w_coord, :user_z_coord, :events, :events_ordered_by_dist, :five_closest_events

  def initialize
    @events = []
    @events_ordered_by_dist = []
    @five_closest_events = []
  end

  def closest_events
     welcome_viagogo
     puts "Please input your coordinates as x, y:"
     user_w_coord, user_z_coord = gets.split.map(&:to_i)
     manhattan_distance
     five_closest_events
     puts "\nClosest events to: #{user_w_coord}, #{user_z_coord}"
     puts "\n Event #{@five_closest_events[0][0]} -#{@five_closest_events[0][1]}, Distance: #{@five_closest_events[0][2]}"
     puts "\n Event #{@five_closest_events[1][0]} -#{@five_closest_events[1][1]}, Distance: #{@five_closest_events[1][2]}"
     puts "\n Event #{@five_closest_events[2][0]} -#{@five_closest_events[2][1]}, Distance: #{@five_closest_events[2][2]}"
     puts "\n Event #{@five_closest_events[3][0]} -#{@five_closest_events[3][1]}, Distance: #{@five_closest_events[3][2]}"
     puts "\n Event #{@five_closest_events[4][0]} -#{@five_closest_events[4][1]}, Distance: #{@five_closest_events[4][2]}"
     "Book now to avoid disappointment"
  end

  def manhattan_distance
    file = File.read('event_data.json')
    events = JSON.parse(file)
    events.each do |event|
      x_abs_dist =  (event["x_coord"] -  user_w_coord.to_i).abs
      y_abs_dist =  (event["y_coord"] -  user_z_coord.to_i).abs
      @events <<  [event["unique_id"], event["ticket_price"], x_abs_dist + y_abs_dist]
    end
  end

  def five_closest_events
    @events_ordered_by_dist += @events.sort_by { |e| e[2] }
    @five_closest_events += @events_ordered_by_dist.take(5)
  end



  def welcome_viagogo
   puts """\n Welcome to our online event locator with
                            _________

                                              `/oo:
                                             sMMMM.
                                             .sdho                                                     `             ``
                              +oooo     +ooo//ysss. ./syhhhys/.    `.://///:-.`    .-:////:.`     ./syhdhhyo:`   ./shddhy+-`
                              /NMMMo   +MMMm.sMMMM- :NNmmmmNMMN/  :+ooo+++oooo/  -+ooo+++ooo+-  `sNMMMNmNMMMMs .yNMMNmmNMMMd-
                               oMMMN- .NMMN: +MMMM-  :///+odMMMh /ooo+-```+ooo/ -oooo:```:oooo: hMMMN/...mMMMs`dMMMm:..:dMMMN.
                                hMMMd`hMMM+  +MMMM- +dNMMNmNMMMh`oooo-    +ooo/ +ooo+     +ooo+.MMMMo    dMMMs/MMMM/    :MMMM/
                                `mMMMdMMMy   +MMMM-/MMMh-..sMMMh`oooo/`   +ooo/ /ooo+`   `+ooo/`NMMMh`   mMMMs-MMMMs`   oMMMM:
                                 -NMMMMMd`   +MMMM-+MMMd//+dMMMh -oooo+///oooo/ .+ooo+:-:+ooo+` oNMMMmhhdNMMMs oMMMMdsohNMMNo
                                  /MMMMm.    +MMMM-`omMMMMNdMMMh  .:++ooo+oooo/  `:+oooooo+/-`   -ydNMMNmNMMMs  :ymMMMMMMmy:
                                   ....`     `....   `-::-.`...`   ` `````oooo/     `....``      `.`.....NMMMs    `.://-.`
                                                                 `/+/::::+oooo.                 .dNdysoymMMMN:
                                                                 ./+ooooooo+:`                  /ymMMMMMMMms.
                                                                    ``...``                        `.----`


   """
  end

end
