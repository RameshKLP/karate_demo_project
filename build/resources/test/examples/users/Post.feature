
Feature: POST API Demo

   @TC5
  Scenario: Post request from background demo 2
    * call read('PostHeader.feature')
    Given url  'https://reqres.in/api/users'
    And request input
    When method post
    Then status 201
    And print response

