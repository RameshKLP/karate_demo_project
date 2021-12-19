@ignore

Feature: POST Header Repository

Background:
* url 'https://reqres.in/api'
* header Accept = 'application/json'
* def expectedOutput = read('response1.json')
* def input = read('request.json')

Scenario: Simple Post request demo 1
Given url 'https://reqres.in/api/users'
And request { "name": "Ramesh", "job": "Tester"}
When method post
Then status 201
And print response