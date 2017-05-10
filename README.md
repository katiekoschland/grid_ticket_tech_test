# Grid Developer Test
[![Build Status](https://travis-ci.org/katiekoschland/grid_ticket_tech_test.svg?branch=master)](https://travis-ci.org/katiekoschland/grid_ticket_tech_test) [![Coverage Status](https://coveralls.io/repos/github/katiekoschland/grid_ticket_tech_test/badge.svg?branch=master)](https://coveralls.io/github/katiekoschland/grid_ticket_tech_test?branch=master)

You are required to write a program which accepts a user location as a pair of co-ordinates, and returns a list of the five closest events, along with the cheapest ticket price for each event.

[Requirements](##requirements) | [Scenario](##scenario) | [User Stories](##user-stories) | [Questions](##questions) | [Installation Instructions](##installation-instructions) | [Technologies Used](##technologies-used)

## Requirements

````
* Code in any language you like but please provide clear instructions on how we should build and run your code. Decision: Ruby, Testing with Rspec
* Please use any source control system you like. Using git and commit to Github.
* First requirement is that your code meets the requirements.
* Secondary requirements are whether your code is idiomatic for the language being coded in, easy to read, and clearly laid out.

````
## Scenario

````
* Your program should randomly generate seed data
* Your program should operate in a world that ranges from -10 to +10 (Y axis), and -10 to +10 (X axis)
* Your program should assume that each co-ordinate can hold a maximum of one event
* Each event has a unique numeric identifier (e.g. 1,2,3)
* Each event has zero or more tickets
* Each ticket has a non-zero price, expressed in US Dollars
* The distance between two points should be computed as the Manhattan distance
* Location of user given as co-ordinates
````

## User stories

````
As a user
So that I can see a list of the five closest events
I would like my location to be given as co-ordinates

As a user
So that I don't get ripped off buying tickets
I would also like to be shown the cheapest ticket price for each event on the list
````

## Questions

````
1) How did you randomly generate seed data?

  In order to randomly generate seed data, I decided to use generatedata. This allowed me to generate 100 lines of data into a JSON file and also customize the data type for each column.

````
| Column Title      | Data Type     |
| ----------------- | ------------- |
| unique_id | personal number of 12 digits |
| ticket_quantity | number range from 1 - 200 |
| ticket_price($) |currency with a range from $1- 350 |
|  x_coord | number range from -10 to + 10 |
|  y_coord | number range from -10 to + 10

````
2) How might you change your program if you needed to support multiple events at the same location?

3) How would you change your program if you were working with a much larger world size?
````

## Installation instructions

Clone repository:

````
git clone https://github.com/katiekoschland/grid_ticket_tech_test.git
cd grid_ticket_tech_test
bundle install
````

To run tests:

````
rspec
````

## Technologies used

````
* Ruby
* Tested with Rspec
````
