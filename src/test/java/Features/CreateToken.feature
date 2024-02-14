Feature: Create Token
Scenario: Create a Token with username and password
Given url 'https://restful-booker.herokuapp.com/auth'
And request
"""
{
    "username" : "admin",
    "password" : "password123"
}
"""
When method POST
Then status 200
* print response
