Feature: GET requests
  Background:
    * url 'https://restful-booker.herokuapp.com'
    * header Accept = 'application/json'
    
Scenario: Get booking details by ID
    Given path '/booking/5'
    When method get
    Then status 200
    * print response
    Then match response.firstname != "James"