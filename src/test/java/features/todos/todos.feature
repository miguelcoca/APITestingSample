Feature: sample karate test script    

Background:
* url 'http://localhost:8080'


Scenario: get all users ToDos
Given path '/users/todos'
When method get
Then status 200


Scenario: create a user and then get it by id
* def user =
"""
{
        "userName": "Miguel",
        "description": "Learn Spring DI",
        "targetDate": "2019-10-04T14:50:18.434+0000",
        "isdone": false,
        "id": 1
    }
"""
Given path '/users/Miguel/todos/1'
When method get
Then status 200
And match response contains user
