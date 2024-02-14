Feature: GetBookingIds
Background:
Scenario: Get all Booking  Ids
Given url 'https://restful-booker.herokuapp.com/booking'
When method GET
Then status 200
Then print response
