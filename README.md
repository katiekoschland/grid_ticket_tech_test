# Grid Developer Test

[![Build Status](https://travis-ci.org/katiekoschland/grid_ticket_tech_test.svg?branch=master)](https://travis-ci.org/katiekoschland/grid_ticket_tech_test) [![Coverage Status](https://coveralls.io/repos/github/katiekoschland/grid_ticket_tech_test/badge.svg?branch=master)](https://coveralls.io/github/katiekoschland/grid_ticket_tech_test?branch=master)


You are required to write a program which accepts a user location as a pair of co-ordinates, and returns a list of the five closest events, along with the cheapest ticket price for each event.

[Requirements](#requirements) | [Installation instructions](#installation-instructions) | [Technologies used](#technologies-used) | [Questions](#questions)

## Requirements

* Your program should randomly generate seed data
* Your program should operate in a world that ranges from -10 to +10 (Y axis), and -10 to +10 (X axis)
* Your program should assume that each co-ordinate can hold a maximum of one event
* Each event has a unique numeric identifier (e.g. 1,2,3)
* Each event has zero or more tickets
* Each ticket has a non-zero price, expressed in US Dollars
* The distance between two points should be computed as the Manhattan distance
* Location of user given as co-ordinates


## Installation instructions

Clone repository:

````
git clone https://github.com/katiekoschland/grid_ticket_tech_test.git
cd grid_ticket_tech_test
bundle install
````

In order to run the program, run the following commands:
````
Katies-MacBook:grid_ticket_tech_test katiekoschland$ irb
2.4.0 :001 > require './lib/user.rb'
2.4.0 :002 > user = User.new
2.4.0 :003 > user.closest_events

 Welcome to our online event locator with
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



Please input your coordinates in the following format: x, y
4, 5

Closest events to: 4, 5

 Event 39 - $277.00, Distance: 1
 Event 41 - $164.14, Distance: 2
 Event 50 - $169.47, Distance: 2
 Event 65 - $29.92,  Distance: 2
 Event 66 - $281.28, Distance: 3
 => "Book now to avoid disappointment"

````

To run tests:
````
rspec (22 passing)

````

## Technologies used


* Ruby
* Tested with Rspec



## Questions


1) How did you randomly generate seed data?

  In order to randomly generate seed data, I decided to use generatedata. This allowed me to generate 100 lines of data into a JSON file and also customize the data type for each column.


| Column Title      | Data Type     |
| ----------------- | ------------- |
| unique_id | auto_increment |
| ticket_quantity | number range from 1 - 200 |
| ticket_price($) |currency with a range from $1- 350 |
|  x_coord | number range from -10 to + 10 |
|  y_coord | number range from -10 to + 10


2) How would you change your program if you were working with a much larger world size?

    * During this project I was thinking about the real world application of the underlying principles in my code. I considered the world as a sample size. If a user inputed their postcode a method of similar logic would read the postcode and define the users location as Longitude and latitude. The measurement of distance would need to be more accurate and be useful to the user i.e in miles or with estimated travel time.

    The format of the data would also need to be adapted to handle a much larger population. I would consider changing the JSON file to be put into a database.

3) How might you change your program if you needed to support multiple events at the same location?

    * In order to support multiple events at the same location, I would remove the constraint on my load_events method that only allows one event to be stored and filter the results by user preference.

4) Any other future improvements?
   * I would like to implement twilio-ruby gem to this program, which will allow a user to also receive the closest events as a text message.
