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
     puts "\nPlease input coordinates in the following format x:"
     user_w_coord = gets.chomp
     puts "\nPlease input coordinates in the following format y:"
     user_z_coord = gets.chomp
     manhattan_distance
     five_closest_events
     puts "\nClosest events to: #{user_w_coord}, #{user_z_coord}"
     puts "\n #{@five_closest_events}"
   end

  def manhattan_distance
    file = File.read('event_data.json')
    events = JSON.parse(file)
    events.each do |event|
      x_abs_dist =  (event["x_coord"] -  user_w_coord.to_i).abs
      y_abs_dist =  (event["y_coord"] -  user_z_coord.to_i).abs
      @events << [ event["unique_id"], event["ticket_price"], x_abs_dist + y_abs_dist]
    end
  end

  def five_closest_events
    @events_ordered_by_dist += @events.sort_by { |e| e[2] }
    @five_closest_events = @events_ordered_by_dist.take(5)
  end

  private

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
