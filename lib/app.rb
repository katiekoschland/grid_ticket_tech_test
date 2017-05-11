require_relative 'grid'
require_relative 'event'
require_relative 'coordinate'
require_relative 'user'

class App

  def spacer
    puts "".center(20,'-')
  end

  def prompt
    print ">"
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

 def coordinate_input
    spacer
    puts "\nPlease input coordinates in the following format (x, y):"
    user_coord = gets.chomp
  end

end
