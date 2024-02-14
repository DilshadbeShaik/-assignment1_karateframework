Feature: CreateBooking
Background:
    * url 'https://restful-booker.herokuapp.com'
    * header Accept = 'application/json'
Scenario: Create a booking with all details 
Given path '/booking'
And request
"""
{
    "firstname" : "James",
    "lastname" : "Brown",
    "totalprice" : 111,
    "depositpaid" : true,
    "bookingdates" : {
        "checkin" : "2018-01-01",
        "checkout" : "2019-01-01"
    },
      "additionalneeds" : "Breakfast"
      }
"""
When method POST
Then status 200
* print response 
