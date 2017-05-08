# Grid Developer Test

You are required to write a program which accepts a user location as a pair of co-ordinates, and returns a list of the five closest events, along with the cheapest ticket price for each event.

# Requirements

````
* Code in any language you like but please provide clear instructions on how we should build and run your code. Decision: Ruby, Testing with Rspec
* Please use any source control system you like. Using git and commit to Github.
* First requirement is that your code meets the requirements.
* Secondary requirements are whether your code is idiomatic for the language being coded in, easy to read, and clearly laid out.

````
# Scenario

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

# User stories

````
As a user
So that I can see a list of the five closest events
I would like my location to be given to Viagogo

As a user
So that I don't get ripped off buying tickets
I would also like to be shown the cheapest ticket price for each event on the list
````

# Questions to be answered

````
1) How might you change your program if you needed to support multiple events at the same location?

2) How would you change your program if you were working with a much larger world size?
````

# Installation instructions

Clone repository:

````
git clone ....
cd grid-developer-test
bundle install
````

To run tests:

````
rspec
````

# Technologies used

````
* Ruby
* Tested with Rspec
````