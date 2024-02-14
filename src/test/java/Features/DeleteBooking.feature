Feature: Delete Booking
  Background:
    * url 'https://restful-booker.herokuapp.com'
    * header Accept = 'application/json'
 
 Scenario: Delete booking details by ID
Given path '/booking/1'
When method DELETE
Then status 201
Then print response
Then match response=={}