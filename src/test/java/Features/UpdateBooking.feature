Feature: Update Booking
  Background:
    * url 'https://restful-booker.herokuapp.com'
    * header Accept = 'application/json'
    * header Cookie = 'token=abc123'
 
 Scenario: Get booking details by ID
    Given path '/booking/5'
    When method get
    Then status 200
    * print response
       
Scenario: Update the name
    Given path '/booking/5'
    And request {"firstname" : "James","lastname" : "Brown"}
When method PUT
Then status 200
* print response 

