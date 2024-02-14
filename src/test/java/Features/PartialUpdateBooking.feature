
Feature: Update Booking
  Background:
    * url 'https://restful-booker.herokuapp.com'
    * header Accept = 'application/json'
 
 Scenario: Get booking details by ID
    Given path '/booking/5'
    When method get
    Then status 200
    * print response
       
Scenario: Update the name
    Given path '/booking/5'
    And request
    """
    {
    "firstname" : "James",
    "lastname" : "Brown"
   }
   """
When method PATCH
Then status 200
* print response 

