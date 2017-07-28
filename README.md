nstructions
This test should not take you longer than two hours to complete. 

What we are looking for: functionality, efficiency, readability and tests
Use this test to demonstrate your understanding of OO and TDD.


1. ruby_app

Write a ruby script that:

a. Receives a log as argument (webserver.log is provided)
  e.g.: ./parser.rb webserver.log

b. Returns the following:

  > list of webpages with most page views ordered from most pages views to less page views
     e.g.:
         /home 90 visits
         /index 80 visits
         etc...
  > list of webpages with most unique page views also ordered
     e.g.:
         /about/2   8 unique views
         /index     5 unique views
         etc...
         
### How to test
To test you can execute the command **rake**. After the test execution you can take a look in test coverage on **coverage/index.html**.

### How to run
To run you execute the command **./bin/parser.rb logs/webserver.log** or the command **ruby bin/parser.rb logs/webserver.log**.

